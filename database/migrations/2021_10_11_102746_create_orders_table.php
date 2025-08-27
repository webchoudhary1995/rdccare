<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->nullable();
            $table->bigInteger('sample_collection_address_id')->nullable();
            $table->string('date')->nullable();
            $table->string('time')->nullable();
            $table->string('payment_method')->nullable();
            $table->string('token')->nullable();
            $table->double('subtotal', 8, 2)->nullable();
            $table->double('tax', 8, 2)->nullable();
            $table->double('final_total', 8, 2)->nullable();
            $table->bigInteger('status')->default(0);
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
        Schema::dropIfExists('orders');
    }
}
