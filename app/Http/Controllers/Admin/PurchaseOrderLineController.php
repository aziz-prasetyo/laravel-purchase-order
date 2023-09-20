<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PurchaseOrderLine;
use DateTime;
use Validator;
use Illuminate\Http\Request;

class PurchaseOrderLineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.purchase-order-lines.index', ['purchaseOrderLines' => PurchaseOrderLine::paginate(10)]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.purchase-order-lines.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PurchaseOrderLine  $purchaseOrderLine
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, PurchaseOrderLine $purchaseOrderLine)
    {
        $validator = Validator::make($request->all(), [
            'qty' => 'required',
            'price' => 'required',
            'discount' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withErrors($validator->errors());

        $purchaseOrderLine->qty = $request->post('qty');
        $purchaseOrderLine->price = $request->post('price');
        $purchaseOrderLine->discount = $request->post('discount');
        $purchaseOrderLine->total = (int)$request->post('qty') * (int)$request->post('price') - ((int)$request->post('discount') / 100 * (int)$request->post('price'));
        $purchaseOrderLine->created_at = new DateTime();
        $purchaseOrderLine->updated_at = new DateTime();

        $purchaseOrderLine->save();

        return redirect()->intended(route('admin.purchase_order_lines'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PurchaseOrderLine  $purchaseOrderLine
     * @return \Illuminate\Http\Response
     */
    public function show(PurchaseOrderLine $purchaseOrderLine)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PurchaseOrderLine  $purchaseOrderLine
     * @return \Illuminate\Http\Response
     */
    public function edit(PurchaseOrderLine $purchaseOrderLine)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PurchaseOrderLine  $purchaseOrderLine
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PurchaseOrderLine $purchaseOrderLine)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PurchaseOrderLine  $purchaseOrderLine
     * @return \Illuminate\Http\Response
     */
    public function destroy(PurchaseOrderLine $purchaseOrderLine)
    {
        //
    }
}
