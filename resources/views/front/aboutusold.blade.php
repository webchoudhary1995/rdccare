@extends('front.layout')
@section('title')
    {{ $title }}
@stop
@section('meta-data')
<meta property="og:type" content="website"/>
<meta property="og:url" content="{{route('aboutus')}}"/>
<meta property="og:title" content="{{__('message.site_name')}}"/>
<meta property="og:image" content="{{asset('public/img/').'/'.$setting->logo}}"/>
<meta property="og:image:width" content="250px"/>
<meta property="og:image:height" content="250px"/>
<meta property="og:site_name" content="{{__('message.site_name')}}"/>
<meta property="og:description" content="{{__('message.meta_description')}}"/>
<meta property="og:keyword" content="{{__('message.meta_keyword')}}"/>
<link rel="shortcut icon" href="{{asset('public/img/').'/'.$setting->favicon}}">
<meta name="viewport" content="width=device-width, initial-scale=1">
@stop
@section('content')
        <section class="page-title-two">
            
            <div class="lower-content">
                <div class="auto-container">
                    <ul class="bread-crumb clearfix">
                        <li><a href="{{route('home')}}">{{__('message.Home')}}</a></li>
                        <li>{{$title}}</li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="about-style-two">
            <div class="auto-container">
                <div class="row align-items-center clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 content-column">
                        <div class="content_block_1">
                            <div class="content-box mr-50">
                                <div class="sec-title mb-0">
                                    <span class="abouth2">Reliable Diagnostics</span>
                                    <p>Reliable Diagnostic Centre is a leading chain of pathology laboratories in India having quality accreditation Such as NABL and NABH in the group</p>
                                </div>
                                <div class="text">
                                    Reliable Diagnostic Centre was established in 2004 as a referral histopathology and
                                     Cytology centre catering to laboratory and hospitals. In 2008 a complete diagnostic
                                     facility was launched. Since then, we have been constantly evolving, innovating,
                                     collaborating, and broadening our scope of work to meet the dynamic needs of our
                                     clinicians, patients and the clients we serve. 
                                    We are sincerely striving to establish RDC as the most advanced diagnostic centre
                                     which fully caters to end- to-end needs of our clients.
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!--<div class="col-lg-6 col-md-12 col-sm-12 image-column">-->
                       
                    <!--</div>-->
                </div>
            </div>
        </section>
        <section class="process-style-two  py-4">
           
            <div class="auto-container">
                <div class="sec-title mb-0">
                    <h2>
                      <span class="red-text">Vision &</span> 
                      <span class="blue-text">Mission</span>
                    </h2>

                    <p>The aim and Objectives of this center is to provide QUALITY
                         DIAGNOSTIC SERVICES at affordable price with stress on both
                         accuracy and precision with MINIMUM TURN AROUND TIME to
                         guide clinicians through patient care</p>
                </div>
                <div class="text">
                    <h3>
                      <span class="red-text">Vision</span> 
                    </h3>
                     Our vision is to make Pathologist and Microbiologist
                     part of treating team so that patient is benefitted the
                     most by continuous mutual interaction with Clinician
                     and change the present scenario by which diagnostic
                     facilities are functioning.
                </div>
                <div class="text">
                    <h3>
                      <span class="blue-text">Mission</span>
                    </h3>
                     Our Motto is to deliver “Best Quality and Reliable result at 
                        Affordable cost at your door step”.
                </div>
            </div>
        </section>
        @include('front.why_rdc')
@stop
@section('footer')
@stop