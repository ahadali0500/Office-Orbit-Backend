<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('attendances', function (Blueprint $table) {
            $table->id();
            $table->time('check_in_time')->nullable();
            $table->time('checking_time')->nullable();
            $table->time('check_out_time')->nullable();
            $table->time('checkout_time')->nullable();
            $table->integer('leave_id')->nullable();
            $table->string('working_hours')->nullable();
            $table->integer('employee_id')->nullable();
            $table->integer('manager_id')->nullable();
            $table->enum('status', ['onjob', 'absent', 'leave', 'weekend']);
            $table->string('date');
            $table->string('day');
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
        Schema::dropIfExists('attendances');
    }
}
