<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\PackageController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderControllers;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\MakePaymentController;
use App\Http\Controllers\PaymentSettingController;
use App\Http\Controllers\ControllerCoupon;
// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('cache-clear', function () {
    Artisan::call("optimize:clear");
    echo "done";
});

Route::get("make_payment",[MakePaymentController::class,"show_make_payment"]);
Route::post("save_braintree",[MakePaymentController::class,"save_braintree"])->name("save-braintree");
Route::any("razor_payment",[MakePaymentController::class,"razor_payment"])->name("razor-payment");
Route::post("paystack-payment",[MakePaymentController::class,"show_paystack_payment"])->name("paystack-payment");
Route::any("paystackcallback",[MakePaymentController::class,"paystackcallback"])->name('paystackcallback');
Route::any("rave-payment",[MakePaymentController::class,"show_rave_payment"])->name("rave-payment");
Route::any('/rave/callback',[MakePaymentController::class,"rave_callback"])->name('rave-callback');
Route::any("paytm-payment",[MakePaymentController::class,"store_paytm_data"])->name("paytm-payment");
Route::any("paytmstatus",[MakePaymentController::class,"paymentpaytmCallback"])->name('paytmstatus');
Route::get("payment_success",[MakePaymentController::class,"payment_success"])->name("payment-success");
Route::get("payment_failed",[MakePaymentController::class,"payment_failed"])->name("payment-failed");


Route::get("/",[FrontController::class,"show_home"])->name('home');
#-----------------------home visit-----------------------------------------------------
Route::get("home_visit",[FrontController::class,"show_home_visit"])->name('home_visit');
Route::post("save_home",[FrontController::class,"save_home"])->name('save-home-visit');
Route::get("my-home",[FrontController::class,"my_home"])->name('my-home');
#-----------------------upload Prescription-----------------------------------------------------

#--------------------------- call back --------------------------------------------------------
Route::post("save_callback",[FrontController::class,"save_callback"])->name('save_callback'); 

Route::get("prescription",[FrontController::class,"prescription"])->name('prescription');
Route::post("save_prescription",[FrontController::class,"save_prescription"])->name('save_prescription');
Route::get("my_prescription",[FrontController::class,"my_prescription"])->name('my_prescription');



Route::get("update-location",[FrontController::class,"updateLocation"])->name('update-location');
Route::get("update-location-city",[FrontController::class,"updateLocationcity"])->name('update-location-city');
Route::get("categorylist",[FrontController::class,"show_categorylist"])->name('category-list');
Route::get("subcategory_detail/{id}",[FrontController::class,"show_subcategory_detail"])->name("subcategory-detail");
Route::get("package_detail/{id}",[FrontController::class,"show_package_detail"])->name("package-detail");
Route::get("parameter-detail",[FrontController::class,"show_parameter_detail"])->name("parameter-detail");
Route::get("profile_detail",[FrontController::class,"show_profile_detail"])->name("profile-detail");
Route::get("checkout",[FrontController::class,"show_checkout"])->name("checkout");
Route::get("get-users-by-city/{id}",[FrontController::class,"getUsersByCity"]);
Route::get("applycoupon",[FrontController::class,"applycoupon"]);
Route::get("login",[FrontController::class,"show_login"])->name("user-login");

Route::get("otpverify",[FrontController::class,"otp_verify"]);
Route::get("register",[FrontController::class,"show_register"])->name("user-register");
Route::any("post_login",[FrontController::class,"post_user_login"])->name('post-user-login');
Route::post("post_user_register",[FrontController::class,"post_user_register"])->name("post-user-register");
Route::get("aboutus",[FrontController::class,"show_aboutus"])->name("aboutus");

Route::get("Terms_of_Service",[FrontController::class,"Terms_of_Service"])->name("Terms_of_Service");

Route::get("refund_policy",[FrontController::class,"refund_policy"])->name("refund_policy");
Route::get("Privacy_Policy",[FrontController::class,"Privacy_Policy"])->name("Privacy_Policy");
Route::get("franchise",[FrontController::class,"franchise"])->name("franchise");

Route::get("service",[FrontController::class,"show_service"])->name("service");
Route::get("contact-us",[FrontController::class,"show_contactus"])->name("contact-us");

Route::get("addcart",[CartController::class,"show_addcart"])->name('addcart');
Route::get("deletecart",[CartController::class,"show_deletecart"])->name("deletecart");

Route::get("viewcartdata",[CartController::class,"viewcartdata"]);
Route::post("save-contact",[FrontController::class,"save_contact_detail"])->name("save-contact");
Route::get("addnewsletter/{email}",[FrontController::class,"addnewsletter"]);
Route::get("getallpack",[FrontController::class,"getallpack"])->name("getallpack");
Route::any("search-item",[FrontController::class,"show_search_item"])->name("search-item");
Route::get("show-package-list",[FrontController::class,"show_package_list"])->name("show-package-list");
Route::get("show-test-list",[FrontController::class,"show_test_list"])->name("show-test-list");
Route::get("forgotpassword",[FrontController::class,"show_forgotpassword"])->name("forgotpassword");
Route::post("post-forgotpassword",[FrontController::class,"post_forgotpassword"])->name("post-forgotpassword");

Route::get("resetpassword/{code}",[FrontController::class,"resetpassword"]);
Route::any("resetnewpwd",[FrontController::class,"resetnewpwd"]);
Route::post("postreview",[FrontController::class,"show_postreview"])->name("postreview");

Route::post("add_cart_member",[CartController::class,"add_cart_member"])->name("add-cart-member");


Route::group(['middleware' => ['usercheckexiste']], function () {
        Route::get("deletemembercart",[CartController::class,"deletemembercart"]);
        Route::get("addcustomizepackage",[CartController::class,"addcustomizepackage"])->name("addcustomizepackage");
        Route::get("removecustomizepackage",[CartController::class,"removecustomizepackage"])->name("removecustomizepackage");
        Route::get("user_dashboard",[FrontController::class,"show_dashboard"])->name('dashboard');
        Route::get("user_logout",[FrontController::class,"show_user_logout"])->name('user-logout');
        Route::post("update_user_address",[FrontController::class,"show_update_user_address"])->name('update-user-address');
        Route::post("post_user_address",[FrontController::class,"show_post_user_address"])->name("post-user-address");
        Route::post("book_order",[FrontController::class,"post_Book_order"])->name("book-order");
        Route::get("appointmentbook/{id}",[FrontController::class,"show_appointmentbook"])->name("appointmentbook");
        Route::get("changepassword",[FrontController::class,"show_changepassword"])->name("user-change-password");
        Route::post("update_change_password",[FrontController::class,"update_change_password"])->name("update-change-password");
        Route::get("user_profile",[FrontController::class,"show_user_profile"])->name("user-profile");
        Route::post("update_profile_info",[FrontController::class,"show_update_profile_info"])->name("update-profile-info");
        Route::get("my_addresses",[FrontController::class,"show_my_addresses"])->name("my-addresses");
        Route::get("my_family_member",[FrontController::class,"show_my_family_member"])->name("my-family-member");
        Route::post("update_user_family",[FrontController::class,"show_update_user_family"])->name("update-user-family");
        Route::get("getmember",[FrontController::class,"show_getmember"])->name("getmember");
        Route::get("deletememer/{id}",[FrontController::class,"deletememer"])->name("deletememer");
        Route::get("getaddress",[FrontController::class,"getaddress"])->name("getaddress");
        Route::get("deleteaddress/{id}",[FrontController::class,"deleteaddress"])->name("deleteaddress");
        Route::get("deletevisit/{id}",[FrontController::class,"deletevisit"])->name("deletevisit");
        Route::get("printorder",[FrontController::class,"show_printorder"])->name("printorder");
        Route::get("report-user-view/{id}",[FrontController::class,"show_report_view"])->name("report-user-view");
        Route::post("post_user_feedback",[FrontController::class,"show_post_user_feedback"])->name("post-user-feedback");

        Route::post("save_member_detail",[FrontController::class,"show_update_user_member"])->name('save-member-detail');

});









Route::get("checkadminpassword/{val}",[AdminController::class,"update_check_admin_password"]);

//admin side

Route::get("admin",[AdminController::class,"show_login"])->name("admin-login");
Route::post("admin_postlogin",[AdminController::class,"post_login"])->name("admin-postlogin");

Route::get("manager-login",[ManagerController::class,"show_manager_login"])->name("manager-login");
Route::post("manager_postlogin",[ManagerController::class,"post_login"])->name("manager-postlogin");

Route::group(['middleware' => ['admincheckexiste']], function () {
    Route::get('admin-dashboard', [AdminController::class, 'show_dashboard'])->name('admin-dashboard');

    Route::get("logout",[AdminController::class,"logout"])->name("admin-logout");

    Route::get("admin_profile",[AdminController::class,"show_admin_profile"])->name("admin-profile");
    Route::post("update_admin_profile",[AdminController::class,"show_update_admin_profile"])->name('update-admin-profile');

    
    Route::get('admin-changepassword',[AdminController::class, 'change_password'])->name('admin-changepassword');
    Route::post("update_admin_change_password",[AdminController::class,"show_update_admin_change_password"])->name('update_admin_change_password');

    Route::get("categorydatatable",[CategoryController::class,"categorydatatable"])->name("admin-categorydatatable");
    Route::get("category",[CategoryController::class,"show_category"])->name("admin-category");
    Route::get("savecategory/{url}",[CategoryController::class,"show_savecategory"]);
    Route::post("update_category",[CategoryController::class,"show_update_category"])->name('update-category');
    Route::get("deletecategory/{id}",[CategoryController::class,"deletecategory"])->name('delete-category');
#------------------------ offers --------------------------------------------------------
    Route::get("offer",[CategoryController::class,"show_offer"])->name("admin-offer");
    Route::get("offerdatatable",[CategoryController::class,"offerdatatable"])->name("admin-offerdatatable");
    Route::get("saveoffer/{url}",[CategoryController::class,"show_saveoffer"]);
    Route::post("update_offer",[CategoryController::class,"show_update_offer"])->name('update-offer');
    Route::get("deleteoffer/{id}",[CategoryController::class,"deleteoffer"])->name('delete-offer');
    
    #------------------------ coupon --------------------------------------------------------
    Route::get("coupon",[ControllerCoupon::class,"show_coupon"])->name("admin-coupon");
    Route::get("savecoupon/{url}",[ControllerCoupon::class,"show_savecoupon"]);
    Route::post("update_coupon",[ControllerCoupon::class,"show_update_coupon"])->name('update-coupon');
    Route::get("coupondatatable",[ControllerCoupon::class,"coupondatatable"])->name("admin-coupondatatable");
    Route::get("deletecoupon/{id}",[ControllerCoupon::class,"deletecoupon"])->name('delete-coupon');
    
     Route::get("callback",[ControllerCoupon::class,"callback"])->name("callback");
     
    Route::get("admin-city",[CityController::class,"show_city"])->name("admin-city");
    Route::get("citydatatable",[CityController::class,"citydatatable"])->name("citydatatable");
    Route::get("savecity/{id}",[CityController::class,"save_city"])->name("savecity");
    Route::post("update_city",[CityController::class,"post_city"])->name("update-city");
    Route::get("deletecity/{id}",[CityController::class,"delete_city"])->name("deletecity");

    Route::get("subcategorydatatable",[SubcategoryController::class,"subcategorydatatable"])->name("admin-subcategorydatatable");
    Route::get("admin-subcategory",[SubcategoryController::class,"show_subcategory"])->name("admin-subcategory");
    Route::get("savesubcategory/{url}",[SubcategoryController::class,"show_savesubcategory"]);
    Route::post("update_subcategory",[SubcategoryController::class,"show_update_subcategory"])->name('update_subcategory');
    Route::get("deletesubcategory/{id}",[SubcategoryController::class,"deletesubcategory"])->name('delete-subcategory');


    Route::get("package",[PackageController::class,"show_package"])->name('show-package');
    Route::get("package_datatable",[PackageController::class,"package_datatable"])->name("package_datatable");
    Route::get("save_package/{id}/{tab}",[PackageController::class,"show_save_package"])->name('save-package');
    Route::post("/package_basic_info",[PackageController::class,"show_package_basic_info"])->name("save-package-basic-info");
    Route::post("/package_lab_info",[PackageController::class,"show_package_lab_info"])->name("save-package-lab-info");

    Route::get("/save_parameter/{id}/{tab}",[PackageController::class,"show_save_parameter"])->name('save-parameter');
    Route::post("save_parameter_basic_info",[PackageController::class,"show_save_parameter_basic_info"])->name('save-parameter-basic-info');
    Route::post("save_parameter_lab_info",[PackageController::class,"show_save_parameter_lab_info"])->name('save-parameter-lab-info');
    Route::get("parameter",[PackageController::class,"show_parameter"])->name('parameter');
    Route::get("parameter_datatable",[PackageController::class,"parameter_datatable"])->name("parameter_datatable");
    Route::get("delete_parameter/{id}",[PackageController::class,"show_delete_parameter"])->name("delete_parameter");
    Route::get("getsubcategorybycategory/{id}",[PackageController::class,"show_getsubcategorybycategory"])->name("getsubcategorybycategory");
    Route::get("getlistofparameter",[PackageController::class,"getlistofparameter"])->name("getlistofparameter");
    Route::post("save_package_test_info",[PackageController::class,"show_save_package_test_info"])->name("save-package-test-info");
    Route::post("save_package_branch_info",[PackageController::class,"show_save_package_branch_info"])->name("save-package-branch-info");
    Route::get("frq/{id}/{type}",[PackageController::class,"viewfrq"])->name("frq");
    Route::get("frq_datatable/{id}/{type}",[PackageController::class,"frq_datatable"])->name("frq_datatable");
    Route::post("update_frq",[PackageController::class,"update_frq"])->name("update-frq");
    Route::get("delete_frq/{id}",[PackageController::class,"show_delete_frq"])->name("delete_frq");
    Route::get("getfrq/{id}",[PackageController::class,"show_getfrq"])->name("getfrq");

    Route::get("profiles",[PackageController::class,"show_profiles"])->name("profiles");
    Route::post("update_profile",[PackageController::class,"show_update_profile"])->name("update-profile");
    Route::get("save_profile/{id}",[PackageController::class,"show_save_profile"])->name('save-profile');
    Route::get("profiledatatable",[PackageController::class,"profiledatatable"])->name("profiledatatable");
    Route::get("gettestids/{type}",[PackageController::class,"show_get_test_ids"])->name("gettestids");


    Route::get("manager",[UserController::class,"show_manager"])->name("manager");
    Route::get("ManagerTable",[UserController::class,"show_ManagerTable"])->name("ManagerTable");
    Route::get("savemanager/{id}",[UserController::class,"show_savemanager"])->name("savemanager");
    Route::post("update_manager_profile_admin",[UserController::class,"show_update_manager_profile"])->name("update-manager-profile-admin");
    Route::get("deleteuser/{id}",[UserController::class,"deleteuser"])->name("deleteuser");
    //////--------------------------------------------------//////////
    Route::get("testuser/{id}",[UserController::class,"testuser"])->name("testuser");
    Route::post("add-item",[UserController::class,"addtest"])->name("add-item");
    Route::post("remove-item",[UserController::class,"removetest"])->name("remove-item");
    
    Route::post("update-items",[UserController::class,"updatetests"])->name("update-items");
    
    route::get("popular-package",[PackageController::class,"show_popular_package"])->name("popular-package");
    Route::get("popularPackageTable",[PackageController::class,"show_popularPackageTable"])->name("popularPackageTable");
    Route::get("save_popular_package/{id}",[PackageController::class,"show_save_popular_package"])->name('save-popular-package');
    Route::get("searchpopulartype/{id}",[PackageController::class,"show_searchpopulartype"])->name("searchpopulartype");
    Route::post("update_popular_package",[PackageController::class,"show_update_popular_package"])->name('update-popular-package');

    Route::get("deleteuser_detail/{id}",[UserController::class,"deleteuser_detail"])->name("deleteuser_detail");

    Route::get("user",[UserController::class,"show_user"])->name("user");
    Route::get("UserTable",[UserController::class,"show_UserTable"])->name("UserTable");
    Route::get("getmembersinfo/{id}",[UserController::class,"getmembersinfo"])->name("getmembersinfo");
    Route::get("getaddress/{id}",[UserController::class,"getaddress"])->name("getaddress");

    Route::get("setting/{id}",[AdminController::class,"showsetting"])->name("setting");

    Route::post("savebasicsetting",[AdminController::class,"savebasicsetting"])->name("savebasicsetting");
    Route::post("server_key",[AdminController::class,"server_key"])->name("server_key");

    Route::get("orders",[OrderControllers::class,"show_order"])->name("admin-orders");

    Route::get("OrdersTable",[OrderControllers::class,"show_OrdersTable"])->name("OrdersTable");

    Route::get("getorderdetails/{id}",[OrderControllers::class,"getorderdetails"])->name("getorderdetails");
    Route::get("adminprintorders/{id}",[FrontController::class,"show_admin_printorder"]);

    Route::get("show-contact",[AdminController::class,"show_contactus"])->name("show-contact");
    Route::get("contact_datatable",[AdminController::class,"contact_datatable"])->name("contact_datatable");

    Route::get("deletecontact/{id}",[AdminController::class,"deletecontact"])->name("deletecontact");

    Route::get("sendnews",[AdminController::class,"show_news"])->name("send-news");
    Route::post("post_news",[AdminController::class,"sendnews"])->name("post-news");
    Route::get("notification",[NotificationController::class,"notification"])->name("notification");

    Route::post("change-payment-detail",[AdminController::class,"change_payment_detail"])->name("change-payment-detail");
    Route::post("update-website-details",[AdminController::class,"show_update_website_details"])->name("update-website-details");
    Route::post("update-wallet-details",[AdminController::class,"show_update_wallet_details"])->name("update-wallet-details");
    Route::get("payment-setting",[PaymentSettingController::class,"show_payment_setting"])->name('payment-setting');
    Route::post("updategateway",[PaymentSettingController::class,"show_update_gateway"])->name('updategateway');
});


Route::group(['middleware' => ['managercheckexiste']], function () {
    Route::get('manager-dashboard', [ManagerController::class, 'show_manager_dashboard'])->name('manager-dashboard');

    Route::get("manager-logout",[ManagerController::class,"logout"])->name("manager-logout");

    Route::get("manager_profile",[ManagerController::class,"show_manager_profile"])->name("manager-profile");
    Route::post("update_manager_profile",[ManagerController::class,"show_update_manager_profile"])->name('update-manager-profile');

    Route::get("checkmanagerpassword/{val}",[ManagerController::class,"update_check_manager_password"]);
    Route::get('manager-changepassword',[ManagerController::class, 'change_password'])->name('manager-changepassword');
    Route::post("update_manager_change_password",[ManagerController::class,"show_update_manager_change_password"])->name('update_manager_change_password');


    Route::get("managers_orders",[OrderControllers::class,"show_manager_order"])->name("manager-orders");
    Route::get("manager_home_visit",[OrderControllers::class,"manager_home_visit"])->name("manager-home-visit");
    Route::post("homevisits_status/{id}/{status}",[OrderControllers::class,"homevisits_status"])->name("homevisits_status");
    
    Route::get("ManagerOrdersTable",[OrderControllers::class,"show_manager_OrdersTable"])->name("ManagerOrdersTable");

    Route::get("getmanagerorderdetails/{id}",[OrderControllers::class,"getorderdetails"])->name("getorderdetails");
    Route::get("managerprintorders/{id}",[FrontController::class,"show_admin_printorder"]);

    Route::get("change_order_status/{id}/{status}",[OrderControllers::class,"show_change_order_status"])->name("change_order_status");
    Route::post("complete-order",[OrderControllers::class,"show_complete_order"])->name("complete-order");
    
    Route::post("report-order",[OrderControllers::class,"show_report_order"])->name("report-order");
    Route::get("report-view/{id}",[OrderControllers::class,"show_report_view"])->name("report-view");
    Route::get("edit-Order/{id}",[OrderControllers::class,"edit_order"])->name("edit-Order");
    Route::get("TodayManagerOrdersTable",[OrderControllers::class,"TodayManagerOrdersTable"])->name("TodayManagerOrdersTable");

});