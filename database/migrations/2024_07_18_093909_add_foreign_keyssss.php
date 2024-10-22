<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeyssss extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employees', function (Blueprint $table) {
            $table->foreign('company_token')->references('token')->on('companies');
        });

        Schema::table('managers', function (Blueprint $table) {
            $table->foreign('company_token')->references('token')->on('companies');
        });

        Schema::table('attendances', function (Blueprint $table) {
            $table->foreign('workhour_id')->references('id')->on('workinghours')->onDelete('No Action');
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
            $table->dropForeign(['company_token']);
        });

        Schema::table('managers', function (Blueprint $table) {
            $table->dropForeign(['company_token']);
        });

        Schema::table('attendances', function (Blueprint $table) {
            $table->dropForeign(['workhour_id']);
        });
    }
}
