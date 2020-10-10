@extends('userlayout')

@section('content')
<div class="header pb-6 d-flex align-items-center" style="min-height: 500px; background-image: url({{url('/')}}/asset/images/ecommerce-2607114_1280.jpg); background-size: cover; background-position: center top;">
  <!-- Mask -->
  <span class="mask bg-gradient-default opacity-1"></span>
  <!-- Header container -->
  <div class="container-fluid d-flex align-items-center">
    <div class="row">
      <div class="col-lg-12 col-7">
        <h1 class="display-2 text-white">{{$gate->gateway['name']}}</h1>
      </div>
      <div class="col-lg-12 col-12 text-right">
          <a href="{{url('/')}}/user/fund#bank" class="btn btn-sm btn-neutral">Bank transfer logs</a>
          <a href="{{url('/')}}/user/fund#other" class="btn btn-sm btn-neutral">Other deposit logs</a>
      </div>
    </div>
  </div>
</div>
<!-- Page content -->
<div class="container-fluid mt--6">
  <div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <div class="card bg-gradient-default">
        <div class="card-body">
          <div class="d-sm-flex align-item-sm-center flex-sm-nowrap">
            <div>
              <ul class="list list-unstyled mb-0 text-white">
                <li>Amount: <span class="font-weight-semibold">{{number_format($gate->amount).$currency->name}}</span></li>
                <li>Charge: <span class="font-weight-semibold">{{$gate->charge.$currency->name}}</span></li>
                <li>Payable: <span class="font-weight-semibold">{{$gate->amount+$gate->charge}}{{$currency->name}}</span></li>
              </ul>
            </div>

            <div class="text-sm-right mb-0 mt-3 mt-sm-0 ml-auto">
              <ul class="list list-unstyled mb-0 text-white">
                <li>Status: <span class="badge bg-danger text-white">UNPAID</span></li>
              </ul>
            </div>
          </div>
        </div>

        <div class="card-footer bg-transparent d-sm-flex justify-content-sm-between align-items-sm-center">
          <span>
            <span class="badge badge-mark border-danger mr-2"></span>
          </span>
            <ul class="list-inline list-inline-condensed mb-0 mt-2 mt-sm-0">
                <li class="list-inline-item">
                <form action="{{route('deposit.confirm')}}" method="post">
                @csrf
                  <button type="submit" class="btn btn-neutral">Pay now</button>
                </form>
              </div>
              </li>
            </ul>
        </div>
      </div>
    </div>
  </div>
@stop