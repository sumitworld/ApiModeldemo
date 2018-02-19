//
//  Constants.swift
//  Jewlot
//
//  Created by peerbits_11 on 28/03/16.
//  Copyright © 2016 peerbits. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

//----------------------- DELEGATE --------------------------
let kAppDelegate = UIApplication.shared.delegate as! AppDelegate

// -------------- CONSTANTS -------------------

/***** API Credentials *****/

private let liveURL : String = ""
private let localURL : String = "http://test.service/"

private let isLive : Bool = false   // Api Environment, "Live = true, Local = false"

// Base Api URL
var baseURL: String {
    get {
        return (isLive) ? liveURL : localURL
    }
}


let SCREEN_SIZE = UIScreen.main.bounds

var header: [String:String] = ["Connection":"Close"]

var header1: [String:String] = ["content-type":"application/json"]

var header2: [String:String] = ["":""]

let User_Details = "USER"

let Defaults = UserDefaults.standard

let SomethingWentWrong = "Something Went Wrong!"

let InternetConnection = "no internet connection!"

let NoUser = "0"



// MARK: ------ Parameter -------

let p_email = "email"

let p_password = "password"

let p_encrypteddata = "encrypted_data"

let p_usertype = "user_type"

let p_devicetype = "device_type"

let p_deviceid = "device_id"

let p_mobile = "mobile"

let p_dob = "dob"

let p_userid = "userid"

let p_type = "type"

let p_otp = "otp"

let p_countryid = "country_id"

let p_cityid = "city_id"

let p_firstname = "first_name"

let p_lastname = "last_name"

let p_language = "language"

let p_brandid = "brand_id"

let p_typeid = "type_id"

let p_modelyear = "model_year"

let p_sequence_number = "sequence_number"

let p_plate_letter = "plate_letter"

let p_plate_number = "plate_number"

let p_plate_typeadd = "plate_type"

let p_is_mine = "is_mine"

let p_reference_number = "reference_number"

let p_dialcode = "dial_code"

let p_vehicle_seqno = "vehicleSequenceNumber"

let p_plate_right = "plateLetterRight"

let p_plate_middle = "plateLetterMiddle"

let p_plate_left = "plateLetterLeft"

let p_plate_no = "plateNumber"

let p_plate_type = "plateType"

let p_api_key = "apiKey"

let p_doc_type = "doc_type"

let p_image = "image"

let p_expiration_date = "expiration_date"

let p_identity_number = "identity_number"

let p_nationality = "nationality"

let p_organization = "organization"

let p_vehicle_id = "vehicle_id"

let p_days = "days"

let p_trip_id = "trip_id"

let p_start = "start"

let p_limit = "limit"

let p_datetimestamp = "datetimestamp"

let p_timestamp = "timestamp"

let p_from_id = "from_id"

let p_to_id = "to_id"

let p_message_id = "message_id"

let p_location = "location"

let p_latitude = "latitude"

let p_longitude = "longitude"

let p_end_date = "end_date"

let p_nick_name = "nick_name"

let p_driver_id = "driver_id"

let p_requestid = "requestid"

let p_status = "status"

let p_is_read = "is_read"

let p_firstnoti = "before_trip_20_start"

let p_secondnoti = "before_trip_start"

let p_thirdnoti = "new_request"

let p_oldpass = "oldpass"

let p_newpass = "newpass"

let p_message = "message"

let p_discount_rate = "discount_rate"

let p_referral_code = "referral_code"


let p_captainIdentityNumber = "captainIdentityNumber"

let p_dateOfBirth = "dateOfBirth"

let p_emailAddress = "emailAddress"

let p_mobileNumber = "mobileNumber"

let p_bank_id = "bank_id"

let p_account_number = "account_number"

let p_account_name = "account_name"

let p_user_bank_id = "user_bank_id"

let p_source = "source"

let p_source_lat = "source_latitude"

let p_source_long = "source_longitude"

let p_destination = "destination"

let p_dest_lat = "destination_latitude"

let p_dest_long = "destination_longitude"

let p_source_range = "source_range"

let p_destination_range = "destination_range"

let p_arrival_time = "arrival_time"

let p_departure_time = "departure_time"

let p_estimation_time = "estimated_time"

let p_start_date = "start_date"

let p_contract_id = "contract_id"

let p_work_days = "work_days"

let p_no_of_seats = "no_of_seat"

let p_is_mahram = "is_mahram"

let p_timezone = "timezone"

let p_price = "price"

let p_commission = "commission"

let p_daily_price = "daily_price"

let p_finalprice = "final_price"

let p_gender = "gender"




// MARK: --------- Validation Messages ---------

let InvalidEntryValidation = "Please enter valid EmailID"

let EmailValidation = "Please enter EmailID"

let PasswordValidation = "Please enter Password"

let PasswordValidMessage = "Password must be between 6 to 12 characters"

let EmailValidMessage = "Email maximum 35 characters only"

let BirthDateValidation = "Please select Date of Birth"

let BirthDateValidValidation = "Please select valid Date of Birth"

let MobileNumberValidation = "Please enter Mobile number"

let MobileNumberValidValidation = "Please enter valid Mobile number"

let ExpirationDocumentValidation = "Please select valid expire date"

let FirstnameValidation = "Please enter First Name"

let FirstnameValidValidation = "Please enter valid First Name"

let LastnameValidValidation = "Please enter valid Last Name"

let LastnameValidation = "Please enter Last Name"

let CountryValidation = "Please select Country"

let CityValidation = "Please select City"

let DialCodeValidation = "Please select Dial Code"

let image_validation_msg = "Please provide document image"

let vehicle_image_validation_msg = "Please provide document image"

let vehicle_id_no_msg = "Please enter vehicle Id number"

let id_no_msg = "Please enter Id no"

let id_count_no_msg = "Please enter valid Id number"

let expiry_date_msg = "Please enter expiry date"

let nationality_msg = "Please enter nationality"

let validprofileimage = "Please upload your profile picture"

let validimageLicenceDocument = "Please upload Licence Document"

let ProfileUpdatedMessage = "Profile Updated Successfully"

let ProfilepictureUpdateMessage = "Profile Picture Updated Successfully"

let OTPMessage = "Message Sent"

let invalidprefix = "Please enter valid"

let prefix = "Please enter"

let pprefix = "Please"

let noOfSeatsZeroValidation = "Number of seats must be greater than zero"

let SourceDestiLocValidation = "Source & Destination Location must not be same"

let tripTypeValidation = "Please select Trip type"

let sourceLocValidation = "Please select Source Location"

let destiLocValidation = "Please select Destination Location"

let arrivalTimeValidation = "Please select Arrival time"

let departureTimeValidation = "Please select Departure time"

let startDateValidation = "Please select Start Date"

let genderValidation = "Please select Gender"

let vehicleValidation = "Please select Vehicle"

let noOfSeats = "Please enter number of seats"

let noOfSeatLimit = "Please enter number of seats less than "

let workDayValidation = "Please select Workdays"

let estimatedDayValidation = "Please select Estimated Start time"

let extendedDayValidation = "Please select Extended Date"

let priceValidation = "Please enter Price (Monthly)"

let priceLimitValidation = "Price cannot be greater then 8000 SAR"

let priceLimitMinValidation = "Price must be greater then 100 SAR"

let contractDurationValidation = "Please select Contract Duration"

let estimateDateValidation = "Estimated time must be in between Arrival & Departure time"

let estimateDateValidationgoing = "Estimated time must be greater then Arrival Time"

let estimateDateValidationreturn = "Estimated time must be greater then Departure Time"

let tripEditSuccess = "Trip Edited Successfully"

let tripExtendSuccess = "Trip Extended Successfully"


let EndDateExtendValidation = "Please select End date"

let EndDateExtendValidValidation = "Please select valid End date"

let EnddateTripValidValidation = "Contract End date must be before Trip End date"

let NickNameValidMessage = "Nick Name must contain minimum 6 characters and 2 digits"

let NickNamemaxValidMessage = "Nick Name maximum limit is 20 characters only"

let NickNameminValidMessage = "Please enter Nick Name"

let LocationValidation = "Please select location"

let PassengerAddedMessage = "Passenger Added Successfully"

let MessageValidation = "Please Select Message"

let ConPassengerValidation = "No Confirmed Passenger"

let DriverValidationAddTrip = "You will not be allowed to Add a New Trip, unless you complete the documents."

let PasswordmismatchValidation = "Password does not match"

let PasswordUpdated = "Password has been successfully changed"

let BlockedAccountValidation = "Your account has become inactive please contact support for further details"

let DiscountPercentagevalidValidation = "Discount Percentage must be between 5% to 75%"

let DiscountPercentageValidation = "Please enter Discount Percentage"

let DiscountDurationValidation = "Please select Discount Duration date"

let DiscountDurationValidValidation = "Discount Duration must be between 1 to 30 days"

let bankNameValidation = "Please enter Bank Name"

let accountNoValidation = "Please enter Account Number"

let accountHolderValidation = "Please enter Account Holder Name"

let bankDetailValidation = "Please enter Bank Details"



enum Endpoint : String
{
    case GetQuizList = "get_all_quiz.php"  
}

//----------------------- SCREEN --------------------------

let kMainScreen         = UIScreen.main.bounds
let kMainScreenWidth    = UIScreen.main.bounds.size.width
let kMainScreenHeight   = UIScreen.main.bounds.size.height


//----------------------- COLORS --------------------------

let jewlot_blue = UIColor(red: 36.0/255.0, green: 37.0/255.0, blue: 57.0/255.0, alpha: 1.0)

let jewlot_yellow = UIColor(red: 238.0/255.0, green: 184.0/255.0, blue: 15.0/255.0, alpha: 1.0)

let jewlot_pink = UIColor(red: 178.0/255.0, green: 41.0/255.0, blue: 122.0/255.0, alpha: 1.0)

let jewlot_gray = UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 85.0/255.0, alpha: 1.0)


//----------------------- FONTS --------------------------

func fontReguler(_ size:CGFloat) -> UIFont {
   return UIFont(name: "ProximaNova-Regular", size: size)!
}

func fontSemibold(_ size:CGFloat) -> UIFont {
    return UIFont(name: "ProximaNova-Semibold", size: size)!
}

func fontSemiboldNovaA(_ size:CGFloat) -> UIFont {
    return UIFont(name: "ProximaNovaA-Semibold", size: size)!
}

// MARK: --------- METHODS -------------

// -------- Phone Number -----------------
func isValidPhoneNumber(value: String) -> Bool {
    //let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
    let PHONE_REGEX = "^\\d{10}$"
    let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
    let result =  phoneTest.evaluate(with: value)
    return result
}

// ---------- USERID -----------
//func getCurrentUserID() -> Int?
//{
//    if let result = Defaults.value(forKey: User_Details)
//    {
//        let user : UserDetails = UserDetails(Data: JSON(result))
//        print(user.userid)
//        return user.userid
//    }
//    else
//    {
//        return nil
//
//    }
//}
//


//func GetUserDetails() -> UserDetails?
//{
//    if let result = Defaults.value(forKey: User_Details)
//    {
//        print(result)
//        let user : UserDetails = UserDetails(Data: JSON(result))
//        return user
//    }
//    else
//    {
//        return nil
//    }
//}
//



