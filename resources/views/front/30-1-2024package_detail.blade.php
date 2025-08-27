@extends('front.layout')
<?php $res_curr = explode("-",$setting->currency);

   $sharp70 = asset('public/front/Docpro/assets/images/shape/shape-70.png');
   $sharp71 = asset('public/front/Docpro/assets/images/shape/shape-71.png');
  
 $cityName = session()->get('cityName');
 if($cityName == ''){
     $cityName='jaipur';
 }
 $profile= array();
 if(isset($data->testdetails))  {
    foreach($data->testdetails as $td) {
        if($td->type==2) {
            foreach($profiles_list as $pl) {
                if($td->type_id==$pl->id) {
                    $profile[] =$pl->profile_name; 
                }
            }
        } 
    } 
}

$profile_name = implode(',',$profile);
$cate = array();
foreach($category as $pl) {

$cate[] =$pl->name; 

}

$cate_name = implode(',',$cate);
$description = COMMAN::replace($data->description,$cityName) ;

?>
@section('title')
   Book {{isset($data->name)?$data->name:''}} | {{isset($data->parameter)?$data->parameter:''}} Parameters{{$res_curr[1]}}{{number_format($data->price,2,'.','')}} in {{$cityName}}
@stop
@section('content')

@section('meta-data')

<link rel="canonical" href="{{ url()->current() }}">
<meta name="description" content="Book {{isset($data->name)?$data->name:''}} Online in {{$cityName}} with Reliable Diagnostic. It Covers Health Test like {{$cate_name}} and {{$profile_name}}">
<meta name="keywords" content="{{isset($data->name)?$data->name:''}} name in {{$cityName}}, with {{$profile_name}} in {{$cityName}}, complete body checkup in {{$cityName}}, Free Sample Home Collection in {{$cityName}}">
<meta name="robots" content="index, follow" />
<meta property="og:type" content="website"/>
<meta property="og:url" content="{{ url()->current() }}"/>
<meta property="og:title" content="Book {{isset($data->name)?$data->name:''}} | {{isset($data->parameter)?$data->parameter:''}} Parameters{{$res_curr[1]}}{{number_format($data->price,2,'.','')}} in {{$cityName}}"/>
<meta property="og:image" content="{{asset('public/img/').'/'.$setting->logo}}"/>
<meta property="og:image:width" content="250px"/>
<meta property="og:image:height" content="250px"/>
<meta property="og:site_name" content="{{__('message.site_name')}}"/>
<meta property="og:description" content="Book {{isset($data->name)?$data->name:''}} Online in {{$cityName}} with Reliable Diagnostic. It Covers Health Test like {{$cate_name}} and {{$profile_name}}">
<meta property="og:keyword" content="{{isset($data->name)?$data->name:''}} name in {{$cityName}}, with {{$profile_name}} in {{$cityName}}, complete body checkup in {{$cityName}}, Free Sample Home Collection in {{$cityName}}"/>
<link rel="shortcut icon" href="{{asset('public/img/').'/'.$setting->favicon}}">
<meta name="viewport" content="width=device-width, initial-scale=1">
@stop

<section class="page-title-two">
   <div class="title-box centred bg-color-2">
      <div class="pattern-layer">
         <div class="pattern-1" style="background-image: url('{{$sharp70}}');"></div>
         <div class="pattern-2" style="background-image: url('{{$sharp71}}');"></div>
      </div>
      <div class="auto-container">
         <div class="title">
            <h1>{{isset($data->name)?$data->name:''}} {{__('message.Package Detail')}}</h1>
         </div>
      </div>
   </div>
   <div class="lower-content">
      <div class="auto-container">
         <ul class="bread-crumb clearfix">
            <li><a href="{{route('home')}}">{{__('message.Home')}}</a></li>
            <li>{{isset($data->name)?$data->name:''}} {{__('message.Package Detail')}}</li>
         </ul>
      </div>
   </div>
</section>
<section class="doctor-details bg-color-3">
   <div class="auto-container">
      <div class="row clearfix">
         <div class="col-lg-12 col-md-12 col-sm-12 content-side">
            <div class="clinic-details-content doctor-details-content">
                
               <div class="clinic-block-one">
                   <div id="msg"></div>
                  <div class="inner-box" style="padding: 34px 40px 37px 34px !important;">
                     <div class="content-box">
                        @if($data->lab_report!="")
                        <div class="like-box">
                           <a href="{{asset('storage/app/public/sample_report').'/'.$data->lab_report}}" target="_blank"><i class="far fa-download"></i></a>
                        </div>
                        @endif
                       
                            <div class="middle body">
                           <div class="sm-container">
                              <i class="show-btn fas fa-share-alt"></i>
                              <div class="sm-menu">
                                 <a href="https://www.facebook.com/sharer/sharer.php?u={{url('package_detail').'/'.$data->id}}"><i class="fab fa-facebook-f"></i></a>
                                 <a href="https://web.whatsapp.com/send?url={{url('package_detail').'/'.$data->id}}"><i class="fab fa-whatsapp"></i></a>
                                 <a href="https://twitter.com/intent/tweet?text={{$data->name}}&url={{url('package_detail').'/'.$data->id}}"><i class="fab fa-twitter"></i></a>
                              </div>
                           </div>
                        </div>
                       

                        <ul class="name-box clearfix">
                           <li class="name">
                              <h2 id="package_name">{{isset($data->name)?$data->name:''}} In {{ ucfirst($cityName)}}</h2>
                           </li>
                           <li><i class="icon-Trust-1"></i></li>
                           <li><i class="icon-Trust-2"></i></li>
                        </ul>
                        <div class="text">
                           <p>{{__('message.Parameter Included')}}: {{isset($data->parameter)?$data->parameter:''}}</p>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                              <span class="designation">{{$data->short_desc}}</span>
                            
                                 <ul class="info clearfix">
                                    <li>
                                       <h5>{{__('message.Healthians Price')}} :  <span style="text-decoration: line-through;">{{$res_curr[1]}}{{number_format($data->mrp,2,'.','')}} </span>/ {{$res_curr[1]}}{{number_format($data->price,2,'.','')}} </h5>
                                    </li>
                                 </ul>
                             
                              <div class="rating-box clearfix">
                                 <ul class="rating clearfix">
                                    <?php $a = explode(".",$data->avg_review);
                                    
                                       if(isset($a[0])){
                                           for($i=0;$i<$a[0];$i++){
                                                echo '<li><i class="icon-Star"></i></li>';
                                           }
                                           if(isset($a[1])){
                                              for($j=$i;$j<5;$j++){
                                                   echo '<li><i class="icon-Star"></i></li>';
                                              }
                                           }
                                       }else{
                                          for($i=0;$i<5;$i++){
                                                echo '<li><i class="icon-Star light"></i></li>';
                                          }
                                       }
                                        

                                    ?>

                                    
                                    <li><a href="#">({{$data->total_review}} {{__("message.Reviews")}})</a></li>
                                 </ul>
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
                        <div class="">
                           @if(Auth::id())
                         
                           <a href="javascript:void()" onclick="showmember('{{$data->id}}','{{$data->mrp}}','{{$data->price}}','{{$data->parameter}}',1)"  data-toggle="modal" data-target="#addaddress" class="theme-btn-one">{{__('message.Book Now')}}<i class="icon-Arrow-Right"></i></a>
                           @else
                             <button id="link" class="theme-btn-one">{{__('message.Book Now')}}<i class="icon-Arrow-Right"></i></button>
                           @endif
                           
                        </div>
                     </div>
                  </div>
               </div>
             <section class="bg-color-3 centred">
                  <div class="auto-container">
                     <?php $sharp45 = asset('public/front/Docpro/assets/images/shape/shape-45.png');
                        $sharp46= asset('public/front/Docpro/assets/images/shape/shape-46.png'); ?>
                     <div class="row clearfix">
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="00ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/1.png')}}" alt=""></figure>
                                 <h3>{{__('message.Parameter Included')}}:</h3>
                                 <div class="link">
                                    <h3>{{isset($data->parameter)?$data->parameter:''}}</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="200ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 200ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/2.png')}}" alt=""></figure>
                                 <h3>{{__('message.Sample Collection')}}</h3>
                                 <div class="link">
                                    @if(isset($data->sample_collection)&&$data->sample_collection=='1')
                                       <h3>{{__('message.Free')}}</h3>
                                    @endif
                                    @if(isset($data->sample_collection)&&$data->sample_collection=='2')
                                       <h3>{{isset($data->sample_collection_fee)?$data->sample_collection_fee:''}}</h3>
                                    @endif
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/3.png')}}" alt=""></figure>
                                 <h3>{{__('message.Doctor Consultation')}}</h3>
                                 <div class="link">
                                    <h3>{{__('message.Free')}}</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="600ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 600ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/4.png')}}" alt=""></figure>
                                 <h3>{{__('message.Test booked')}}</h3>
                                 <div class="link">
                                    <h3>100+</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row clearfix">
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="00ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/5.png')}}" alt=""></figure>
                                 <h3>{{__('message.Report Time')}}</h3>
                                 <div class="link">
                                    <h3>{{isset($data->report_time)?$data->report_time:''}}</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="200ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 200ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/6.png')}}" alt=""></figure>
                                 <h3>{{__('message.Fasting Time')}}</h3>
                                 <div class="link">
                                    @if(isset($data->fasting_time)&&$data->fasting_time=='0')
                                       <h3>{{__('message.Free')}}</h3>
                                    @endif
                                    @if(isset($data->fasting_time)&&$data->fasting_time=='1')
                                       <h3>{{isset($data->fast_time)?$data->fast_time:'No'}}</h3>
                                    @endif
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="400ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 400ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/7.png')}}" alt=""></figure>
                                 <h3>{{__('message.Test Recommended')}}</h3>
                                 <div class="link">
                                    <h3>{{isset($data->test_recommended_for)?$data->test_recommended_for:''}}</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 category-block">
                           <div class="category-block-one wow fadeInUp animated animated animated" data-wow-delay="600ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 600ms; animation-name: fadeInUp;">
                              <div class="inner-box">
                                 <div class="pattern">
                                    <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                 </div>
                                 <figure class="icon-box"><img src="{{asset('public/img/8.png')}}" alt=""></figure>
                                 <h3>{{__('message.Recommended age')}}</h3>
                                 <div class="link">
                                    <h3>{{isset($data->test_recommended_for_age)?$data->test_recommended_for_age:''}}</h3>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <div class="tabs-box">
                  <div class="tab-btn-box centred">
                     <ul class="tab-btns tab-buttons clearfix">
                        <li class="tab-btn active-btn" data-tab="#tab-1">{{__('message.Overview')}}</li>
                        <li class="tab-btn" data-tab="#tab-2">{{__('message.Test Details')}}</li>
                        <li class="tab-btn" data-tab="#tab-3">{{__('message.FRQ')}}</li>
                        <li class="tab-btn" data-tab="#tab-4">{{__('message.Reviews')}}</li>
                     </ul>
                  </div>
                  <div class="tabs-content">
                     <div class="tab active-tab" id="tab-1">
                        <div class="inner-box">
                           <div class="text">
                              <?= html_entity_decode($description);?>
                           </div>
                        </div>
                     </div>
                     <div class="tab" id="tab-2">
                        <div class="experience-box">
                           <div class="text">
                              <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                 @if(isset($data->testdetails))
                                    @foreach($data->testdetails as $td)
                                       @if($td->type==1)
                                        @foreach($parameter_list as $pl)
                                                           @if($td->type_id==$pl->id)
                                         <div class="panel panel-default">
                                             <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                   <a role="button"  data-parent="#accordion" href="javascript:gotoparam('{{$pl->slug}}')" aria-expanded="true" aria-controls="collapseOne">
                                                      <i class="more-less glyphicon glyphicon-plus"></i>
                                                      <div class="row">
                                                        
                                                            <div class="col-md-4"> {{$pl->name}}</div>
                                                          
                                                        
                                                          <div class="col-md-8" style="text-align: right;">
                                                              <button type="button" onclick="gotoparam('{{$pl->slug}}')';" class="view_btn">View</button>
                                                            </div>
                                                      </div>
                                                   </a>
                                                </h4>
                                             </div>
                                          </div>
                                           @endif
                                                         @endforeach
                                       @endif
                                      @if($td->type==2)
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$td->type_id}}" aria-expanded="true" aria-controls="collapse{{$td->type_id}}">
                    <div class="row">
                        @foreach($profiles_list as $pl)
                            @if($td->type_id==$pl->id)
                                <div class="col-md-4 profile-name">
                                    {{$pl->profile_name}}
                                </div>
                                <?php $arr = explode(",",$pl->no_of_parameter);?>
                                <div class="col-md-4">
                                    <span>{{count($arr)}}</span>
                                </div>
                                <div class="col-md-4" style="text-align: right;">
                                    <button type="button" onclick="gotoprofile('{{$pl->slug}}');" class="view_btn">View</button>
                                </div>
                            @endif
                        @endforeach
                    </div>
                </a>
            </h4>
        </div>
        <div id="collapse{{$td->type_id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{{$td->type_id}}">
            <div class="panel-body">
                <ul>
                    @foreach($profiles_list as $pl)
                        @if($td->type_id==$pl->id)
                            <?php $arr = explode(",",$pl->no_of_parameter);?>
                            @foreach($parameter_list as $a)
                                @if(in_array($a->id,$arr))
                                    <li class="row" style="width: 100%;border: 1px solid #1e4169;padding: 8px;margin-bottom: 5px;">
                                        <div class="col-md-6">
                                            <a href="#" style="color: black;">{{$a->name}}</a>
                                        </div>
                                        <div class="col-md-6" style="text-align: right;">
                                            <button type="button" onclick="gotoparam('{{$a->slug}}');" class="view_btn">View</button>
                                        </div>
                                    </li>
                                @endif
                            @endforeach
                        @endif
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endif

                                       
                                    @endforeach
                                 @endif
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="tab" id="tab-3">
                        <div class="location-box">
                           <div class="content_block_5">
                              <div class="content-box">
                                 <ul class="accordion-box">
                                    @if(count($data->package_frq)>0)
                                    @foreach($data->package_frq as $dp)
                                    <li class="accordion block">
                                       <div class="acc-btn">
                                          <div class="icon-outer"></div>
                                          <h4>{{$dp->question}}</h4>
                                       </div>
                                       <div class="acc-content">
                                          <div class="text">
                                             <p>{{$dp->ans}}</p>
                                          </div>
                                       </div>
                                    </li>
                                    @endforeach
                                    @endif
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="tab" id="tab-4">
                        <div class="inner-box">
                           <div class="text">
                              <div class="review-box">
                                            <h3>{{isset($data->name)?$data->name:''}}</h3>
                                             <p></p>
                                            <div class="review-inner">
                                             @if(count($reviewlist)>0)
                                                @foreach($reviewlist as $rl)
                                                   <div class="single-review-box">
                                                       <figure class="image-box"><img src="{{asset('storage/app/public/profile').'/'.$rl->userdata->profile_pic}}" alt=""></figure>
                                                       <ul class="rating clearfix">
                                                           <li><i class="icon-Star"></i></li>
                                                           <li><i class="icon-Star"></i></li>
                                                           <li><i class="icon-Star"></i></li>
                                                           <li><i class="icon-Star"></i></li>
                                                           <li class="light"><i class="icon-Star"></i></li>
                                                       </ul>
                                                       <h6>{{$rl->userdata->name}} <span>- {{date("F d,Y",strtotime($rl->date))}}</span></h6>
                                                       <p>{{$rl->description}}</p>
                                                   </div>
                                                @endforeach
                                             @else
                                                 <p>{{__("message.No Review")}}</p>
                                             @endif
                                            </div>
                                            @if(Auth::id())
                                                
                                                <h3>{{__('message.Add Review')}}</h3>
                                            <form action="{{route('postreview')}}" method="post" class="registration-form">
                                                      {{csrf_field()}}
                                                     <div class="row clearfix">
                                                         <input type="hidden" name="type" value="1">
                                                         <input type="hidden" name="type_id" value="{{$data->id}}">
                                                         <div class="col-lg-12 col-md-12 col-sm-12 form-group">

                                                             <label>{{__('message.Ratting')}}</label>
                                                             <div class="star-rating">
                                                               <input type="radio" id="5-stars" name="rating" value="5" />
                                                               <label for="5-stars" class="star">&#9733;</label>
                                                               <input type="radio" id="4-stars" name="rating" value="4" />
                                                               <label for="4-stars" class="star">&#9733;</label>
                                                               <input type="radio" id="3-stars" name="rating" value="3" />
                                                               <label for="3-stars" class="star">&#9733;</label>
                                                               <input type="radio" id="2-stars" name="rating" value="2" />
                                                               <label for="2-stars" class="star">&#9733;</label>
                                                               <input type="radio" id="1-star" name="rating" value="1" />
                                                               <label for="1-star" class="star">&#9733;</label>
                                                             </div>
                                                         </div>
                                                         <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                                             <label>{{__('message.Messages')}}</label>
                                                             <textarea name="description" rows="5" id="description" required=""></textarea>
                                                         </div>
                                                        
                                                        
                                                         <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                                             <button type="submit" class="theme-btn-one">{{__('message.Submit')}}<i class="icon-Arrow-Right"></i></button>
                                                         </div>
                                                     </div>
                                                 </form>
                                            @else
                                            <a href="{{route('user-login')}}" class="theme-btn-one">{{__('message.Login')}}<i class="icon-Arrow-Right"></i></a>
                                            @endif
                                           
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
</section>
<section class="pricing-section bg-color-3 sec-pad" style="padding-top: 0px;">
   <div class="auto-container">
      <div class="tabs-box">
         <?php 
            $sharp75 = asset('public/front/Docpro/assets/images/shape/shape-75.png');
            $sharp76 = asset('public/front/Docpro/assets/images/shape/shape-76.png');
            $sharp77 = asset('public/front/Docpro/assets/images/shape/shape-77.png');
            ?>
         <div class="tabs-content">
            <div class="tab active-tab" id="tab-1">
               <div class="sec-title centred">
                  <p></p>
                  <h2>{{__('message.Realted Package')}}</h2>
               </div>
               <div class="row clearfix">
                  <div class="brand-carousel section-padding owl-carousel" id="packagelist">
                     @foreach($data->realted_package as $pl)
                     <?php $discount = 100 * ($pl->mrp - $pl->price) / $pl->mrp; ?>
                     <div class="single-logo">
                        <div class="col-lg-12 col-md-6 col-sm-12 pricing-block">
                           <div class="pricing-block-one">
                              <div class="pricing-table">
                                 <div class="pattern">
                                    <span class="discount" >{{round($discount)}} %</span>
                                    <div class="pattern-1" style="background-image: url('{{$sharp75}}');"></div>
                                    <div class="pattern-2" style="background-image: url('{{$sharp76}}');"></div>
                                    <div class="pattern-3" style="background-image: url('{{$sharp77}}');"></div>
                                 </div>
                                 <div class="table-header">
                                    <h2><?=substr($pl->name,0,10)?></h2>
                                    <h3><span style="text-decoration: line-through;">{{$res_curr[1]}}{{$pl->mrp}}</span> / {{$res_curr[1]}}{{$pl->price}} </h3>
                                    <p><span>{{__('message.Includes')}} :  </span> {{$pl->parameter}} {{__('message.Parameters')}} </p>
                                 </div>
                                 <div class="table-content">
                                    <ul class="list clearfix">
                                       <?php $arr = explode("#",$pl->paramater_data); ?>
                                       @foreach($arr as $a)
                                          <li><?=substr($a,0,20)?></li>
                                       @endforeach
                                    </ul>
                                 </div>
                                 <div class="table-footer">
                                    <div class="link"><a href="{{ route('package', ['city'=>$cityName,'id' => $pl->slug ]) }}"><i class="icon-Arrow-Right"></i></a></div>
                                    <div class="btn-box"><a href="{{ route('package', ['city'=>$cityName,'id' => $pl->slug ]) }}" class="theme-btn-one">{{__('message.Know More')}}<i class="icon-Arrow-Right"></i></a></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach                    
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

@stop
@section('footer')
<script type="text/javascript">
   <?php if($setting->is_rtl==1){ ?>
       $('.brand-carousel').owlCarousel({
         loop:true,
         rtl:true,
         margin:10,
         autoplay:true,
         responsive:{
           0:{
             items:1
           },
           600:{
             items:3
           },
           1000:{
             items:3
           }
         }
       })
   <?php }else{ ?>
      $('.brand-carousel').owlCarousel({
         loop:true,
         margin:10,
         autoplay:true,
         responsive:{
           0:{
             items:1
           },
           600:{
             items:3
           },
           1000:{
             items:3
           }
         }
       })
   <?php }?>
   
    document.querySelector('.show-btn').addEventListener('click', function() {
     document.querySelector('.sm-menu').classList.toggle('active');
   });

    function gotoparam(val){
         cityname = "<?php echo $cityName; ?>";
      window.location.href="{{url('parameter')}}/"+cityname+"/"+val;
    }

    function gotoprofile(val){
    //    console.log(val);
     cityname = "<?php echo $cityName; ?>";
      window.location.href="{{url('profile')}}/"+cityname+"/"+val;
    }


</script>
<script>
    $(document).ready(function() {
        $('.profile-name').click(function() {
            $(this).closest('.panel').find('.panel-collapse').collapse('toggle');
        });
    });
</script>

@stop