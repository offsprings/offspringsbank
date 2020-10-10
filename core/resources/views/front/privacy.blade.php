@extends('layout')
@section('css')

@stop
@section('content')
<section id="header" class="backg backg-one" style="background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);">
<div class="circle-shape"><img src="{{url('/')}}/asset/img/shape/shape-circle.svg" alt="circle"></div>
<div class="container">
    <div class="backg-content-wrap">
        <div class="row align-items-center">
            <div class="col-lg-6 z100">
                <div class="backg-content">
                    <span class="discount wow soneFadeUp text-dark" data-wosw-delay="0.3s"><b>{{$set->title}}</span>
                    <h1 class="backg-title wow soneFadeUp text-dark" data-wow-delay="0.5s">
                    Privacy policy
                    </h1>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-shape bg-shape-bottom">
    <svg width="1920" height="500" viewBox="0 0 1920 500" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M0 378C500.193 206.37 633.5 54 1122.5 220C1611.5 386 1550.97 90.4445 1920 0V500H0V378Z" fill="white"/>
        <path class="path-back-shape" d="M446.5 273.504C354.5 274 272.5 275.504 272.5 275.504C542.689 161.595 684.5 129.5 883 159C883 159 852.5 169 826 176.504C799.5 184.009 768.913 211.198 740 227.504C701 249.5 675.329 267.561 625.5 273.504C558.972 281.439 538.5 273.009 446.5 273.504Z"/>
    </svg>
</div>
</section>
<section class="about genera-informes wow soneFadeUp">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="section-title">
                        <p>{!!$about->privacy_policy!!}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@stop