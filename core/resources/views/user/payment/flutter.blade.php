@extends('userlayout')
@section('content')
<div class="header pb-6 d-flex align-items-center" style="min-height: 500px; background-image: url({{url('/')}}/asset/images/ecommerce-2607114_1280.jpg); background-size: cover; background-position: center top;">
  <!-- Mask -->
  <span class="mask bg-gradient-default opacity-1"></span>
  <!-- Header container -->
  <div class="container-fluid d-flex align-items-center">
    <div class="row">
      <div class="col-lg-12 col-7">
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
            <div class="align-item-sm-center flex-sm-nowrap text-center">
                <form>
                <button type="button" class="btn btn-primary" style="cursor:pointer;" value="Pay Now" id="submit">Pay Now</button>
                </form>
                <script type="text/javascript" src="http://flw-pms-dev.eu-west-1.elasticbeanstalk.com/flwv3-pug/getpaidx/api/flwpbf-inline.js"></script>
                <script>
                document.addEventListener("DOMContentLoaded", function(event) {
                document.getElementById("submit").addEventListener("click", function(e) {
                    var PBFKey = "{{$gatewayData->val1}}";
                    getpaidSetup({
                    PBFPubKey: PBFKey,
                    customer_email: "{{$user->email}}",
                    customer_firstname: "{{$user->name}}",
                    customer_lastname: "",
                    custom_description: "{{$gnl->site_name}} funding",
                    custom_logo: "{{url('/')}}/asset/{{ $logo->image_link }}",
                    custom_title: "{{$gnl->site_name}}",
                    amount: {{ $flutter['amount'] }},
                    customer_phone: "{{$user->mobile}}",
                    country: "",
                    currency: "{{$currency->name}}",
                    txref: "{{ $flutter['track'] }}",
                    integrity_hash: "6800d2dcbb7a91f5f9556e1b5820096d3d74ed4560343fc89b03a42701da4f30",
                    onclose: function() {},
                    callback: function(response) {
                        var flw_ref = response.tx.flwRef; // collect flwRef returned and pass to a server page to complete status check.
                        console.log("This is the response returned after a charge", response);
                        if (
                        response.tx.chargeResponseCode == "00" ||
                        response.tx.chargeResponseCode == "0"
                        ) {
                        window.location.href="{{url('/')}}/ipnflutter";
                        } else {
                        window.location.href="{{route('user.fund')}}";
                        }
                    }
                    });
                });
                });
                </script>
            </div>
            </div>
        </div>
        </div>
    </div>
    </div>
</div>

@endsection