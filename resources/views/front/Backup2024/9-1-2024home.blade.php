@extends('front.layout')
@section('title')
{{__('message.title_home')}}
@stop
@section('meta-data')
<?php $res_curr = explode("-", $setting->currency); ?>
<link rel="canonical" href="{{route('home')}}">
<meta name="description" content="{{__('message.meta_description_home')}}">
<meta name="keywords" content="{{__('message.meta_keyword_home')}}">

<meta name="robots" content="index, follow" />
<meta property="og:type" content="website" />
<meta property="og:url" content="{{route('home')}}" />
<meta property="og:title" content="{{__('message.title_home')}}" />
<meta property="og:image" content="{{asset('public/img/').'/'.$setting->logo}}" />
<meta property="og:image:width" content="250px" />
<meta property="og:image:height" content="250px" />
<meta property="og:site_name" content="{{__('message.site_name')}}" />
<meta property="og:description" content="{{__('message.meta_description_home')}}" />
<meta property="og:keyword" content="{{__('message.meta_keyword_home')}}" />
<link rel="shortcut icon" href="{{asset('public/img/').'/'.$setting->favicon}}">
<meta name="viewport" content="width=device-width, initial-scale=1">
@stop
@section('content')
@php
$imagePaths = unserialize($setting->main_banner);
$search_banner = asset('public/img') . '/' . $setting->search_banner;
$cityName = session()->get('cityName');
if ($cityName == '') {
    $cityName = 'jaipur';
}
@endphp
<section class="banner-section style-five">
    <div class="slider">
        @foreach($imagePaths as $bannerIMG)
        <?php
        $path = env('APP_URL') . "public/" . "/" . $bannerIMG;
        ?>

        <a href="#" target="_blank">
            <img class="map-layer" src="{{$path}}">
        </a>
        @endforeach

        <div class="slider-dots">
            @foreach($imagePaths as $bannerIMG)
            <span class="slider-dot active"></span>
            @endforeach
        </div>
    </div>
    <div class="auto-container">
        <div class="content-inner">
        </div>
        <div class="content-box">
            <figure class="image-box"><img src="{{$search_banner}}" alt=""></figure>
            <h2>{{__('message.Find Package/Test')}}</h2>
            <div class="form-inner">
                <form action="{{route('search-item')}}" method="post">
                    {{csrf_field()}}
                    <div class="form-group clearfix">

                        <input type="text" name="tags" id="tags"
                            placeholder="{{__('message.Search Packages,Parameters')}}" required="">
                        <button type="submit"><i class="icon-Arrow-Right"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="process-style-two alternat-2 centred">

    <div class="auto-container">
        <div class="sec-title centred">
            <h2>Our Offers</h2>
        </div>
        <div class="inner-content">

            <div class="brand-offer owl-carousel">
                @foreach($offer as $c)

                <div class="col-lg-12 col-md-6 col-sm-12 category-block">


                    <img src="{{asset('storage/app/public/category').'/'.$c->image}}" width="100%" alt="">

                </div>

                @endforeach
            </div>

        </div>
    </div>
</section>

<section class="pricing-section bg-color-3 sec-pad">
    <div class="auto-container">
        <div class="sec-title centred">
            <p></p>
            <h2>{{__('Popular Packages')}}</h2>
        </div>
        <div class="tabs-box">
            <?php
            $sharp75 = asset('public/front/Docpro/assets/images/shape/shape-75.png');
            $sharp76 = asset('public/front/Docpro/assets/images/shape/shape-76.png');
            $sharp77 = asset('public/front/Docpro/assets/images/shape/shape-77.png');
            $sharp68 = asset('public/front/Docpro/assets/images/shape/shape-68.png');
            $sharp69 = asset('public/front/Docpro/assets/images/shape/shape-69.png');
            ?>
            <div class="tabs-content">
                <div class="tab active-tab" id="tab-1">
                    <div class="row clearfix">
                        <div class="brand-offer section-padding owl-carousel">
                            @foreach($data_popular as $pl)
                            <?php $discount = 100 * ($pl->mrp - $pl->price) / $pl->mrp; ?>
                            <div class="col-lg-12 col-md-6 col-sm-12 category-block">
                                <div class="pricing-block-one">
                                    <div class="pricing-table">

                                        <div class="pattern">
                                            <span class="discount">{{round($discount)}} %</span>
                                            <div class="pattern-1" style="background-image: url('{{$sharp75}}');"></div>
                                            <div class="pattern-2" style="background-image: url('{{$sharp76}}');"></div>
                                            <div class="pattern-3" style="background-image: url('{{$sharp77}}');"></div>
                                        </div>
                                        <div class="table-header" style="height: 155px;">
                                            <h2>{{$pl->name}}</h2>

                                            <h3><span
                                                    style="text-decoration: line-through;">{{$res_curr[1]}}{{number_format($pl->mrp,2,'.','')}}</span>
                                                / {{$res_curr[1]}}{{number_format($pl->price,2,'.','')}} </h3>
                                            <p><span>Includes : </span> {{$pl->no_of_parameter}} Parameters </p>
                                        </div>

                                        <div class="table-content">
                                            <ul class="list clearfix" id="parameterList">
                                                <?php $arr = explode("#", $pl->paramater_data); ?>
                                                @for ($i = 0; $i < count($arr); $i++) @if ($i < 4) <li><span
                                                        class="mr10">{{$arr[$i]}}</span></li>
                                                    @else
                                                    <li style="display: none;"><span class="mr10">{{$arr[$i]}}</span>
                                                    </li>
                                                    @endif
                                                    @endfor

                                            </ul>
                                            @if (count($arr) > 4)
                                            <a href="javascript:void(0);" class="more-link">More</a>
                                            <a href="javascript:void(0);" class="less-link"
                                                style="display: none;">Less</a>
                                            @endif
                                        </div>
                                        <div class="table-footer">

                                            <div class="link"><a
                                                    href="{{ route('package', ['city'=>$cityName,'id' => $pl->slug ]) }}">
                                                    <i class="icon-Arrow-Right" style="margin-bottom:-50px;"></i></a>
                                            </div>
                                            <div class="btn-box"><a
                                                    href="{{ route('package', ['city'=>$cityName,'id' => $pl->slug ]) }}"
                                                    class="theme-btn-one">{{__('message.Know More')}}<i
                                                        class="icon-Arrow-Right"></i></a></div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    @if(count($data_popular)>3)
                    <div class="btn-box row" style="margin-top: 30px;    display: flex;justify-content: center;">
                        <a href="{{route('popular-packages',['city'=>$cityName])}}" class="theme-btn-one">
                            {{__('message.More Package')}}<i class="icon-Arrow-Right"></i>
                        </a>
                    </div>
                    @endif
                </div>

            </div>
        </div>
    </div>
</section>
<section class="process-style-two alternat-2 centred">
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
        <div class="sec-title centred">
            <p></p>
            <h2>{{__('Tests by Lifestyle Disorder')}}</h2>
        </div>
        <div class="inner-content">
            <div class="row clearfix">
                <div class="brand-carousel section-padding owl-carousel">
                    @foreach($category as $c)
                    <div class="single-logo">
                        <div class="col-lg-12 col-md-6 col-sm-12 category-block">
                            <div class="category-block-one wow fadeInUp animated animated" data-wow-delay="00ms"
                                data-wow-duration="1500ms">
                                <div class="inner-box">
                                    <div class="pattern">
                                        <div class="pattern-1" style="background-image: url('{{$sharp45}}');"></div>
                                        <div class="pattern-2" style="background-image: url('{{$sharp46}}');"></div>
                                    </div>
                                    <figure class="icon-box"><img
                                            src="{{asset('storage/app/public/Subcategory').'/'.$c->image}}" alt="">
                                    </figure>
                                    <h3><a
                                            href="{{ route('lifestyledisorder', ['city'=>$cityName,'slug' => $c->slug]) }}">{{$c->name}}</a>
                                    </h3>
                                    <span>{{$c->short_desc}}</span>
                                    <div class="link"><a href="{{ route('lifestyle-disorder',['city'=>$cityName]) }}"><i
                                                class="icon-Arrow-Right"></i></a></div>
                                    <div class="btn-box"><a
                                            href="{{ route('lifestyledisorder', ['city'=>$cityName,'slug' => $c->slug]) }}"
                                            class="theme-btn-one">{{__('message.View List')}}<i
                                                class="icon-Arrow-Right"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<!---------------------------------test--------------------->
<section class="pricing-section bg-color-3 sec-pad">
    <div class="auto-container">
        <div class="sec-title centred">
            <p></p>
            <h2>Popular Tests</h2>
        </div>
        <div class="tabs-box">
            <?php
            $sharp75 = asset('public/front/Docpro/assets/images/shape/shape-75.png');
            $sharp76 = asset('public/front/Docpro/assets/images/shape/shape-76.png');
            $sharp77 = asset('public/front/Docpro/assets/images/shape/shape-77.png');
            $sharp68 = asset('public/front/Docpro/assets/images/shape/shape-68.png');
            $sharp69 = asset('public/front/Docpro/assets/images/shape/shape-69.png');
            ?>
            <div class="tabs-content">
                <div class="tab active-tab" id="tab-1">
                    <div class="row clearfix">
                        <div class="brand-offer  owl-carousel">
                            @foreach($test as $pl)
                            <?php $discount = 100 * ($pl->mrp - $pl->price) / $pl->mrp; ?>
                            <div class="col-lg-12 col-md-6 col-sm-12 category-block">
                                <div class="pricing-block-one">
                                    <div class="pricing-table">

                                        <div class="pattern">
                                            <span class="discount">{{round($discount)}} %</span>
                                            <div class="pattern-1" style="background-image: url('{{$sharp75}}');"></div>
                                            <div class="pattern-2" style="background-image: url('{{$sharp76}}');"></div>
                                            <div class="pattern-3" style="background-image: url('{{$sharp77}}');"></div>
                                        </div>
                                        <div class="table-header" style="height: 185px;">
                                            <h3>{{$pl->profile_name}} ({{$pl->test_short_code}})</h3>

                                            <h4><span
                                                    style="text-decoration: line-through;">{{$res_curr[1]}}{{number_format($pl->mrp,2,'.','')}}</span>
                                                / {{$res_curr[1]}}{{number_format($pl->price,2,'.','')}} </h4>
                                            <p><span>Includes : </span> {{$pl->no_of_parameter}} Parameters </p>
                                        </div>

                                        <div class="table-content">
                                            <ul class="list clearfix" id="parameterList">
                                                <?php $arr = explode("#", $pl->paramater_data); ?>
                                                @for ($i = 0; $i < count($arr); $i++) @if ($i < 4) <li><span
                                                        class="mr10">{{$arr[$i]}}</span></li>
                                                    @else
                                                    <li style="display: none;"><span class="mr10">{{$arr[$i]}}</span>
                                                    </li>
                                                    @endif
                                                    @endfor

                                            </ul>
                                            @if (count($arr) > 4)
                                            <a href="javascript:void(0);" class="more-link">More</a>
                                            <a href="javascript:void(0);" class="less-link"
                                                style="display: none;">Less</a>
                                            @endif
                                        </div>



                                        <div class="table-footer">

                                            <div class="link"><a
                                                    href="{{ route('profile', ['city'=>$cityName,'id' => $pl->slug]) }}"><i
                                                        class="icon-Arrow-Right"></i></a></div>
                                            <div class="btn-box"><a
                                                    href="{{ route('profile', ['city'=>$cityName,'id' => $pl->slug ]) }}"
                                                    class="theme-btn-one">{{__('message.Know More')}}<i
                                                        class="icon-Arrow-Right"></i></a></div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    @if(count($test)>3)
                    <div class="btn-box row" style="margin-top: 30px;    display: flex;justify-content: center;"><a
                            href="{{route('popular-blood-tests',['city'=>$cityName])}}" class="theme-btn-one">More
                            Test<i class="icon-Arrow-Right"></i></a></div>
                    @endif
                </div>

            </div>
        </div>
    </div>
</section>
<!------------------------------end test-------------------->


<section class="funfact-section bg-color-2 centred">
    <div class="pattern-layer">
        <div class="pattern-1" style="background-image: url('{{$sharp68}}');"></div>
        <div class="pattern-2" style="background-image: url('{{$sharp69}}');"></div>
    </div>
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-3 col-md-6 col-sm-12 counter-block">
                <div class="counter-block-one wow slideInUp animated animated animated" data-wow-delay="00ms"
                    data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="count-outer count-box">
                            <span class="count-text" data-speed="1500"
                                data-stop="{{$setting->largest_phlebotomist}}">0</span>
                        </div>
                        <h4>{{__('message.Largest Phlebotomist')}}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 counter-block">
                <div class="counter-block-one wow slideInUp animated animated animated" data-wow-delay="200ms"
                    data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="count-outer count-box">
                            <span class="count-text" data-speed="1500"
                                data-stop="{{$setting->satisfied_customers}}">0</span>
                        </div>
                        <h4>{{__('message.Satisfied Customers')}}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 counter-block">
                <div class="counter-block-one wow slideInUp animated animated animated" data-wow-delay="400ms"
                    data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="count-outer count-box">
                            <span class="count-text" data-speed="1500" data-stop="{{$setting->total_test}}">0</span>
                        </div>
                        <h4>{{__('message.Total Tests')}}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 counter-block">
                <div class="counter-block-one wow slideInUp animated animated animated" data-wow-delay="600ms"
                    data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="count-outer count-box">
                            <span class="count-text" data-speed="1500"
                                data-stop="{{$setting->presence_cities}}">0</span>
                        </div>
                        <h4>{{__('message.Presence Cities')}}</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="cta-section alternat-2 bg-color-2" id="download_app">
    <div class="pattern-layer">
        <?php
        $sharp17 = asset('public/front/Docpro/assets/images/shape/shape-17.png');
        $sharp18 = asset('public/front/Docpro/assets/images/shape/shape-18.png');
        $sharp19 = asset('public/front/Docpro/assets/images/shape/shape-19.png');
        ?>
        <div class="pattern-1" style="background-image: url('{{$sharp17}}');"></div>
        <div class="pattern-2" style="background-image: url('{{$sharp18}}');"></div>
        <div class="pattern-3" style="background-image: url('{{$sharp19}}');"></div>
    </div>
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                <div class="content_block_2">
                    <div class="content-box">
                        <div class="sec-title light">
                            <p>{{__('message.Download apps')}}</p>
                            <h2>{{__('Download Reliable Diagnostics Centre App Now')}}</h2>
                        </div>
                        <div class="text">
                            <p>Book Reliable Diagnostics Centre Health Tests and access your smart reports and health
                                trackers anytime anywhere. Now available on both Google Play Store and App Store.</p>
                        </div>
                        <div class="btn-box clearfix">
                            <a href="{{$setting->appstore_url}}" class="download-btn app-store">
                                <i class="fab fa-apple"></i>
                                <span>{{__('message.Download on')}}</span>
                                <h3>{{__('message.App Store')}}</h3>
                            </a>
                            <a href="{{$setting->playstore_url}}" class="download-btn play-store">
                                <i class="fab fa-google-play"></i>
                                <span>{{__('message.Download on')}}</span>
                                <h3>{{__('message.Google Play')}}</h3>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                <div class="image-box wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <figure class="image"><img src="{{asset('public/img').'/'.$setting->mobile_app_banner}}" alt="">
                    </figure>
                </div>
            </div>
        </div>
    </div>
</section>

<!------------------Labs ------------------------------->

<section class="testimonial-style-two bg-color-3">
    <div class="pattern-layer">
        <?php
        $sharp55 = asset('public/front/Docpro/assets/images/shape/shape-55.png');
        $sharp56 = asset('public/front/Docpro/assets/images/shape/shape-56.png');
        $sharp57 = asset('public/front/Docpro/assets/images/shape/shape-57.png');
        $sharp58 = asset('public/front/Docpro/assets/images/shape/shape-58.png');
        $sharp59 = asset('public/front/Docpro/assets/images/shape/shape-59.png');
        ?>
        <div class="pattern-1" style="background-image: url('{{$sharp55}}');"></div>
        <div class="pattern-2" style="background-image: url('{{$sharp56}}');"></div>
        <div class="pattern-3" style="background-image: url('{{$sharp57}}');"></div>
        <div class="pattern-4" style="background-image: url('{{$sharp58}}');"></div>
        <div class="pattern-5" style="background-image: url('{{$sharp59}}');"></div>
    </div>
    <div class="auto-container">
        <div class="sec-title centred">
            <p></p>
            <h2>Our 60+ Labs Network</h2>
        </div>
        <div class="three-item-carousel owl-carousel owl-theme owl-nav-none">
            @foreach($lab as $df)
            <div class="testimonial-block-two">
                <div class="inner-box">
                    <div class="text" style="height: 130px;">

                        <p> <small><b>
                                    <?php echo substr($df->name, 0, 85) ?> <br>
                                    <?php echo substr($df->branch_code, 0, 85) ?>
                                </b></small></p>
                        <p style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"><span
                                class="designation"> <small><i class="fa fa-phone"></i> : {{$df->phone}} </small></span>
                        </p>
                        <p style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"><span
                                class="designation"> <small><i class="fas fa-map"></i> : {{$df->location['name']}}
                                </small></span></p>
                        <p style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"><span
                                class="designation"> <small><i class="fas fa-map-pin"></i> :
                                    {{number_format($df->distance, 2);}} KM </small></span></p>
                        <a style="text-decoration: none; color: black;" href="javascript:void(0);"
                            onclick="getDirections({{$df->location['lat']}},{{$df->location['lng']}})">
                            <i class="fas fa-street-view"></i> : Direction <i class="fas fa-location-arrow"></i></a>


                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@stop
@section('footer')
<script>
    document.querySelectorAll('.more-link').forEach(function (link) {
        link.addEventListener('click', function () {
            var parameterList = this.parentElement.querySelector('.list');
            var hiddenItems = parameterList.querySelectorAll('li:not(:nth-child(-n+4))');
            for (var i = 0; i < hiddenItems.length; i++) {
                hiddenItems[i].style.display = 'block';
            }
            this.style.display = 'none';
            this.parentElement.querySelector('.less-link').style.display = 'inline';
        });
    });
    document.querySelectorAll('.less-link').forEach(function (link) {
        link.addEventListener('click', function () {
            var parameterList = this.parentElement.querySelector('.list');
            var hiddenItems = parameterList.querySelectorAll('li:not(:nth-child(-n+4))');

            for (var i = 0; i < hiddenItems.length; i++) {
                hiddenItems[i].style.display = 'none';
            }
            this.style.display = 'none';
            this.parentElement.querySelector('.more-link').style.display = 'inline';
        });
    });
    
    // Check if geolocation is available in the browser
    if (navigator.geolocation) {
        // Get the user's current location
        navigator.geolocation.getCurrentPosition(
            function (position) {
                const latitude = position.coords.latitude;
                const longitude = position.coords.longitude;
                const apiEndpoint = `https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=${latitude}&lon=${longitude}`;

                fetch(apiEndpoint)
                    .then(response => response.json())
                    .then(data => {
                        // Log the city name to the console
                       
                    })
                    .catch(error => {
                        console.error('Failed to get city:', error);
                    });
            },
            function (error) {
                console.error('Error getting location:', error);
            }
        );
    } else {
        console.error('Geolocation is not available in this browser.');
    }
</script>
<script type="text/javascript">
    <?php
    if ($setting->is_rtl == 1) {
        ?>
        $('.brand-carousel').owlCarousel({
            loop: true,
            rtl: true,
            margin: 10,
            autoplay: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        })

    <?php } else { ?>
        $('.brand-carousel').owlCarousel({
            loop: true,

            margin: 10,
            autoplay: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        })
    <?php } ?>
</script>
@stop