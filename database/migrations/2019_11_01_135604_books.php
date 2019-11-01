<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Books extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //ProductTable migration 
        Schema::create('books',function(Blueprint $table){             
            $table->increments('id');             
            $table->string('title');                     
            $table->string('slug');             
            $table->string('author');             
            $table->string('isbn');             
            $table->text('summary');   
            $table->integer('stock');           
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
        Schema::dropIfExists('books');
    }
}
