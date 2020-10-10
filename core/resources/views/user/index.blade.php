@extends('userlayout')

@section('content')
<div class="header pb-6 d-flex align-items-center" style="min-height: 500px; background-image: url('{{url('/')}}/asset/images/entrepreneur-593371_1280.jpg'); background-size: cover; background-position: center top;">
  <!-- Mask -->
  <span class="mask bg-gradient-default opacity-3"></span>
  <!-- Header container -->
  <div class="container-fluid">
    <div class="header-body">
      <div class="row align-items-center py-4">
        <div class="col-lg-6 col-7">
          <h1 class="d-inline-block mb-0 text-white">Acct - #{{$user->acct_no}}</h1>
        </div>
        <div class="col-lg-6 col-12 text-right">
        @if($set->py_scheme==1)
          @if($user->upgrade==0)
          <a href="#" data-toggle="modal" data-target="#modal-formx" class="btn btn-sm btn-neutral">Upgrade account</a>
          @else
           <a href="{{route('user.plans')}}" class="btn btn-sm btn-default">PY scheme</a>
          @endif
        @endif
          <a href="{{route('user.statement')}}" class="btn btn-sm btn-neutral">Transaction History</a>
          <div class="modal fade" id="modal-formx" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
            <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
              <div class="modal-content">
                <div class="modal-body p-0">
                  <div class="card bg-gradient-default border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5">
                      <div class="text-white text-left mt-2 mb-3">Don't let your money sit there, upgrade your account & start investing in PY(per year) scheme.</div> 
                      <div class="text-white text-left mt-2 mb-3">Upgrade fee costs {{$set->upgrade_fee.$currency->name}} . Check PY scheme to see what your money is invested on.</div> 
                        <div class="text-left">
                        <a href="{{route('user.upgrade')}}" class="btn btn-neutral">Upgrade</a>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> 
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Page content -->
<div class="container-fluid mt--6">
  <div class="content-wrapper">
  <div class="row">
    <div class="col-lg-8">
    <div class="card bg-gradient-default shadow">
        <div class="card-header bg-transparent">
          <h3 class="mb-0 text-white">Account timeline</h3>
        </div>
        <div class="card-body">
          <div class="timeline timeline-one-side" data-timeline-content="axis" data-timeline-axis-style="dashed">
          @foreach($alert as $hh)
              <div class="timeline-block">
                <span class="timeline-step badge-info">
                  <i class="ni ni-like-2"></i>
                </span>
                <div class="timeline-content">
                  <small class="text-light font-weight-bold">{{date("Y/m/d h:i:A", strtotime($hh->created_at))}}</small>
                  <h5 class="text-white mt-3 mb-0">#{{$hh->reference}}</h5>
                  <p class="text-light text-sm mt-1 mb-0">Date: {{$hh->created_at}},  Amt: {{number_format($hh->amount).$currency->name}}, Ref: {{$hh->reference}}, Desc: {{$hh->details}}</p>
                  <div class="mt-3">
                    <span class="badge badge-pill badge-primary">
                      @if($hh->type==1)
                        Debit
                      @elseif($hh->type==2)
                        Credit
                      @endif
                    </span>
                    <span class="badge badge-pill badge-secondary">
                      @if($hh->status==1)
                        Successful
                      @elseif($hh->status==0)
                        Pending
                      @endif
                    </span>
                  </div>
                </div>
              </div>
          @endforeach
          </div>
        </div>
      </div>
    </div>
     <div class="col-lg-4">
      @if($set->kyc==1)
      <div class="card bg-gradient-default">
        <!-- Card image -->
        <!-- List group -->
        <!-- Card body -->
        <div class="card-body">
          <h3 class="card-title mb-3 text-white">Identity verification</h3>
          <p class="card-text mb-4 text-white">Upload an identity document, for example, driver licence, voters card, international passport, national ID.</p>
          <span class="badge badge-pill badge-warning">
            @if($user->kyc_status==0)
              Unverified
            @else
              Verified
            @endif
          </span>

            @if(empty($user->kyc_link))
            <div class="row align-items-center">
                <div class="col-12 text-right">
                  <a href="{{route('user.profile')}}#kyc" class="btn btn-sm btn-neutral">Upload</a>
                </div>
            </div>
            @endif
        </div>
      </div>
      @endif
      @if($set->save==1)
      <a href="{{route('user.save')}}">
        <div class="card bg-gradient-default shadow">
          <!-- Card header -->
          <div class="card-body">
            <div class="row align-items-center">
              <div class="col-8">
                <!-- Title -->
                <h5 class="h3 mb-0 text-white">Save 4 me</h5>
              </div>
            </div>
            <p class="card-text mb-4 text-white">Join our program and learn to save wisely ahead for your future.</p>
          </div>
        </div>
      </a>
      @endif
  </div>  </div>
@stop