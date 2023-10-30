<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('post_user', function (Blueprint $table) {
            $table->foreignId('user_id')->nullable();
            $table->foreign(columns: 'user_id')->on(table: 'users')->references(columns: 'id')->cascadeOnDelete();
            $table->foreignId('post_id')->nullable();
            $table->foreign(columns: 'post_id')->on(table: 'posts')->references(columns: 'id')->cascadeOnDelete();
            $table->primary(['post_id', 'user_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('post_user');
    }
};
