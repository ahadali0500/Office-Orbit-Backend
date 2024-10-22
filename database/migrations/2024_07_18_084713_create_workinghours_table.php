<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWorkinghoursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('workinghours', function (Blueprint $table) {
            $table->id();
            $table->enum('type', ['full', 'part']);
            $table->string('company_token')->nullable();
            $table->integer('employee_id')->nullable();
            $table->integer('manager_id')->nullable();
            $table->string('startTime')->nullable();
            $table->string('endTime')->nullable();
            $table->string('startBreakTime')->nullable();
            $table->string('endBreakTime')->nullable();
            $table->enum('partType', ['morning', 'evening'])->nullable();
            $table->string('startpartTime')->nullable();
            $table->string('endpartTime')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('workinghours');
    }
}
