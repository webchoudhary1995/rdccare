@extends('front.layout')
@section('title')
 Book Blood Tests For Heart, Liver, diabetes, Cancer, Fever, Pregnancy
@stop
<?php 
$cityName = session()->get('cityName');
 if($cityName == ''){
     $cityName='jaipur';
 }
?>
@section('meta-data')
<link rel="canonical" href="{{ url()->current() }}">

<meta name="description" content="Book Tests for @foreach($subcategory as $row){{$row->name}}, @endforeach Check Symptoms, Causes, Price"/>
<meta name="keywords" content="@foreach($subcategory as $row){{$row->name}}, @endforeach Tests in {{$cityName}} "/>
<meta name="robots" content="index, follow" />
<meta property="og:type" content="website"/>
<meta property="og:url" content="{{ url()->current() }}"/>
<meta property="og:title" content="Book Blood Tests For Heart, Liver, diabetes, Cancer, Fever, Pregnancy"/>
<meta property="og:image" content="{{asset('public/img/').'/'.$setting->logo}}"/>
<meta property="og:image:width" content="250px"/>
<meta property="og:image:height" content="250px"/>
<meta property="og:site_name" content="{{__('message.site_name')}}"/>
<meta property="og:description" content="Book Tests for @foreach($subcategory as $row){{$row->name}}, @endforeach Check Symptoms, Causes, Price"/>
<meta property="og:keyword" content="@foreach($subcategory as $row){{$row->name}}, @endforeach Tests in {{$cityName}} "/>
<link rel="shortcut icon" href="{{asset('public/img/').'/'.$setting->favicon}}">
<meta name="viewport" content="width=device-width, initial-scale=1">
@stop
@section('content')
<section class="page-title-two">
            <div class="title-box centred bg-color-2">
                <div class="pattern-layer">
                   <?php 
                          $sharp70 = asset('public/front/Docpro/assets/images/shape/shape-70.png');
                          $sharp71 = asset('public/front/Docpro/assets/images/shape/shape-71.png');
                    ?>
                    <div class="pattern-1" style="background-image: url('{{$sharp70}}');"></div>
                    <div class="pattern-2" style="background-image: url('{{$sharp71}}');"></div>
                </div>
                <div class="auto-container">
                    <div class="title">
                        <h1>{{__('message.Browse by')}} {{__('Lifestyle Disorder')}}</h1>
                    </div>
                </div>
            </div>
            <div class="lower-content">
                <div class="auto-container">
                    <ul class="bread-crumb clearfix">
                        <li><a href="{{route('home')}}">{{__('message.Home')}}</a></li>
                        <li>{{__('message.Browse by')}}  {{__('Lifestyle Disorder')}}</li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="doctor-details bg-color-3" >
   <div class="auto-container" style="margin-bottom:-10%">
            <!---->
              <div class="row clearfix">
         <div class="col-lg-12 col-md-12 col-sm-12 content-side">
            <div class="clinic-details-content doctor-details-content">
                 <div class="clinic-block-one">
                   
                  <div class="inner-box" style="padding: 34px 40px 37px 34px !important;">
                      <div class="row">
                          <div class="col-md-6">
                              <div class="content-box">
                                    <ul class="name-box clearfix">
                                       <li class="name">
                                          <h2 id="package_name">Book Blood Tests For Heart, Liver, diabetes, Cancer, Fever, Pregnancy</h2>
                                       </li>
                                    </ul>
                                    <div class="text">
                                       <p>Book Tests for @foreach($subcategory as $row){{$row->name}}, @endforeach Check Symptoms, Causes, Price</p>
                                    </div>
                                    
                                 </div>
                          </div>
                          <div class="col-md-6" >
                                <div class="brand-carousel-lab owl-carousel" style="border: 1px solid #233646;padding: 10px;">
                                    @foreach($labs as $df)
                                        <div class="testimonial-block-two">
                                            <div class="text">
                                                <p><b><?php echo substr($df->name, 0, 85) ?> <br> <?php echo substr($df->branch_code, 0, 85) ?></b></p>  
                                                <p style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis;"><i class="fa fa-envelope"></i> : {{$df->email}}</p>
                                                <p style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis;"><i class="fa fa-phone"></i> : {{$df->phone}}</p>
                                                <p style=""><i class="fas fa-map"></i> : {{$df->location['name']}}</p>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                      </div>
                     
                  </div>
               </div>
                </div>
                 </div>
                  </div>
                  </div>
                <!---->
        </section>
 <section class="centred sec-pad" >
            <div class="pattern-layer">
               <?php 
                  $path1 = asset('public/front/Docpro/assets/images/shape/shape-39.png');
                  $path2 = asset('public/front/Docpro/assets/images/shape/shape-42.png');
                  $arrow1 = asset('public/front/Docpro/assets/images/icons/arrow-1.png');
                  $sharp45 = asset('public/front/Docpro/assets/images/shape/shape-45.png');
                  $sharp46 = asset('public/front/Docpro/assets/images/shape/shape-46.png');
                  ?>
               <div class="pattern-1" style="background-image: url('{{$path1}}');"></div>
               <div class="pattern-4" style="background-image: url('{{$path2}}');"></div>
            </div>
            <div class="auto-container">
              
               <div class="inner-content">
                  <div class="row clearfix">
                        @foreach($subcategory as $c)
                           <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                              <div class="category-block-one wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                                 <div class="inner-box">
                                    <div class="pattern">
                                       <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                       <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                    </div>
                                    <figure class="icon-box"><img src="{{asset('storage/app/public/Subcategory').'/'.$c->image}}" alt=""></figure>
                                    <h3><a href="{{ route('lifestyledisorder', ['city'=>$cityName,'slug' => $c->slug]) }}">{{$c->name}}</a></h3>
                                    <span>{{$c->short_desc}}</span>
                                    <div class="link"><a href="{{ route('lifestyledisorder', ['city'=>$cityName,'slug' => $c->slug]) }}"><i class="icon-Arrow-Right"></i></a></div>
                                    <div class="btn-box"><a href="{{ route('lifestyledisorder', ['city'=>$cityName,'slug' => $c->slug]) }}" class="theme-btn-one">{{__('message.View Detail')}}<i class="icon-Arrow-Right"></i></a></div>
                                 </div>
                              </div>
                           </div>
                      
                        @endforeach
                    
                  </div>
               </div>
            </div>
         </section>
@stop
@section('footer')
@stop