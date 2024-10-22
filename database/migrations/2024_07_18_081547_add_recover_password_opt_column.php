<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRecoverPasswordOptColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employees', function (Blueprint $table) {
            $table->string('recover_password_opt')->nullable()->after('end_date'); // Example: adding a new nullable column
        });

        Schema::table('managers', function (Blueprint $table) {
            $table->string('recover_password_opt')->nullable()->after('end_date'); // Example: adding a new nullable column
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('employees', function (Blueprint $table) {
            $table->dropColumn('recover_password_opt');
        });

        Schema::table('managers', function (Blueprint $table) {
            $table->dropColumn('recover_password_opt');
        });
        
    }
}
