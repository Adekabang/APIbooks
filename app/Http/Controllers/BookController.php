<?php 
namespace App\Http\Controllers; 
use App\Book; 
use Illuminate\Http\Request; 

class BookController extends Controller  
{     
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()     
    {         
        $Books = Book::all();         
        return response()->json($Books);     
    }     

    public function store(Request $request)     
    {         
        Book::create($request->all());         
        return response()->json([             
            'message' => 'Successfull create new Book'         
            ]);     
    }     

    public function show($id)     
    {         
        $Book = Book::find($id);         
        return response()->json($Book);     
    }     

    public function update(Request $request, $id)     
    {         
        $Book = Book::find($id);         
        $Book->update($request->all());         
        return response()->json([             
            'message' => 'Successfull update Book'         
            ]);     
    }     

    public function delete($id)     
    {         
        Book::destroy($id);         
        return response()->json([             
            'message' => 'Successfull delete Book'         
            ]);     
    } 
} 
