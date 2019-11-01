<?php namespace App; 
use Illuminate\Database\Eloquent\Model; 
class Book extends Model {     
    protected $fillable = ['name','title','slug','author','isbn','summary','stock'];     
    protected $dates = [];     
    public static $rules = [         
        'name' => 'required',         
        'title' => 'required',         
        'slug' => 'required',         
        'author' => 'required',         
        'isbn' => 'required',         
        'summary' => 'required',  
        'stock' => 'required',   
    ]; 
} 
