<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('products', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('product_category_id')->unsigned();
			$table->string('name', 100);
			$table->float('price', 10, 0);
			$table->string('color', 100)->nullable();
			$table->string('size', 100)->nullable();
			$table->string('description');
			$table->string('other_details')->nullable();
			$table->timestamps();
			$table->softDeletes();
			$table->string('slug');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('products');
	}

}
