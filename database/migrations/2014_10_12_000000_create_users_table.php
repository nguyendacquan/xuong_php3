<?php

use App\Models\User;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('phone',10)->nullable(); 
            $table->string('address')->nullable();
            $table->string('hinh_anh')->nullable();
            $table->enum('gioi_tinh', ['Nam', 'Nữ', 'Khác'])->default('Nam');
            $table->enum('trang_thai', ['Hoạt động', 'Không hoạt động'])->default('Hoạt động');
            $table->date('ngay_sinh')->nullable();
            $table->enum('role', [User::ROLE_ADMIN,User::ROLE_USER ])->default('User');
            $table->softDeletes();
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
