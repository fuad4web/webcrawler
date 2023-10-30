<?php

namespace App\Services;

use GuzzleHttp\Exception\RequestException;
use Psr\Http\Message\UriInterface;
use Psr\Http\Message\ResponseInterface;
use Spatie\Crawler\CrawlObservers\CrawlObserver;

class CrawlerService extends CrawlObserver
{
     function crawled(UriInterface $url, ResponseInterface $response, ?UriInterface $foundOnUrl = null, ?string $linkText = null): void
     {
          try {
               // Extract contact information from the crawled page.
               $html = $response->getBody()->getContents();

               // You should implement your contact information extraction logic here.
               // For this example, let's assume you have a function `extractContacts` that returns an array of contacts.
               $contacts = $this->extractContacts($html);

               // Normalize phone numbers to international format.
               foreach ($contacts as &$contact) {
                    if (isset($contact['phone'])) {
                         $contact['phone'] = $this->normalizePhoneNumber($contact['phone']);
                    }
               }

               // Print out the contacts found on the page.
               echo "<ul>";
               foreach ($contacts as $contact) {
                    echo "<li>";
                    echo "Name: {$contact['name']}\n";
                    echo "Email: {$contact['email']}\n";
                    echo "Phone: {$contact['phone']}\n";
                    // echo "\n\n";
                    echo "</li>";
               }
               echo "</ul>";
          } catch (\Throwable $th) {
               echo $th->getMessage();
          }
     }

     function extractContacts($html)
     {
          // Define an array to store extracted contacts.
          $contacts = [];

          // Define regular expressions to match email and phone number patterns.
          $emailPattern = '/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b/';
          $phonePattern = '/\b(?:\+\d{1,3}[-.●]?)?\(?(?:\d{2,4})\)?[-.●]?\d{1,5}[-.●]?\d{1,5}[-.●]?\d{1,5}\b/';

          // Search for email addresses in the HTML.
          if (preg_match_all($emailPattern, $html, $emailMatches)) {
               foreach ($emailMatches[0] as $email) {
                    // Add email addresses to the contacts array.
                    $contacts[] = ['email' => $email];
               }
          }

          // Search for phone numbers in the HTML.
          if (preg_match_all($phonePattern, $html, $phoneMatches)) {
               foreach ($phoneMatches[0] as $phoneNumber) {
                    // Add phone numbers to the contacts array.
                    $contacts[] = ['phone' => $phoneNumber];
               }
          }

          // You can add logic to extract 'name' information if it's present in the HTML.

          return $contacts;
     }


     function normalizePhoneNumber($phoneNumber)
     {
          // Remove any non-digit characters from the phone number.
          $phoneNumber = preg_replace('/[^0-9]+/', '', $phoneNumber);

          // Check if the phone number starts with a country code. If not, assume a default country code.
          $defaultCountryCode = '+1'; // Change this to your desired default country code.

          if (!empty($phoneNumber) && $phoneNumber[0] !== '+') {
               $phoneNumber = $defaultCountryCode . $phoneNumber;
          }

          return $phoneNumber;
     }


     function crawlFailed(UriInterface $url, RequestException $requestException, ?UriInterface $foundOnUrl = null, ?string $linkText = null): void
     {
          echo "Crawl Failed: ".$requestException->getMessage();
     }
}
