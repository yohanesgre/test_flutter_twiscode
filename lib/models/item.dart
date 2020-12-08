class Item {
    String id;
    String catId;
    String subCatId;
    String itemTypeId;
    String itemPriceTypeId;
    String itemCurrencyId;
    String itemLocationId;
    String conditionOfItemId;
    String dealOptionRemark;
    String description;
    String highlightInfo;
    String price;
    String dealOptionId;
    String brand;
    String businessMode;
    String isSoldOut;
    String title;
    String address;
    String lat;
    String lng;
    String status;
    String addedDate;
    String addedUserId;
    String addedUserName;
    String updatedDate;
    String updatedUserId;
    String updatedFlag;
    String touchCount;
    String favouriteCount;
    String isPaid;
    String isAvailable;
    String isPreOrder;
    String poStart;
    String poEnd;
    String poSlot;
    String poDelivery;
    String isHalal;
    String weight;
    String locationId;
    String locationName;
    String locationType;
    String addedDateStr;
    String paidStatus;
    String photoCount;
    DefaultPhoto defaultPhoto;
    Category category;
    SubCategory subCategory;
    ItemType itemType;
    ItemType itemPriceType;
    ItemCurrency itemCurrency;
    ItemLocation itemLocation;
    ConditionOfItem conditionOfItem;
    ConditionOfItem dealOption;
    User user;
    String isFavourited;
    String isOwner;
    GetAddress getAddress;
    List<GetDelivery> getDelivery;

    Item(
        {this.id,
            this.catId,
            this.subCatId,
            this.itemTypeId,
            this.itemPriceTypeId,
            this.itemCurrencyId,
            this.itemLocationId,
            this.conditionOfItemId,
            this.dealOptionRemark,
            this.description,
            this.highlightInfo,
            this.price,
            this.dealOptionId,
            this.brand,
            this.businessMode,
            this.isSoldOut,
            this.title,
            this.address,
            this.lat,
            this.lng,
            this.status,
            this.addedDate,
            this.addedUserId,
            this.addedUserName,
            this.updatedDate,
            this.updatedUserId,
            this.updatedFlag,
            this.touchCount,
            this.favouriteCount,
            this.isPaid,
            this.isAvailable,
            this.isPreOrder,
            this.poStart,
            this.poEnd,
            this.poSlot,
            this.poDelivery,
            this.isHalal,
            this.weight,
            this.locationId,
            this.locationName,
            this.locationType,
            this.addedDateStr,
            this.paidStatus,
            this.photoCount,
            this.defaultPhoto,
            this.category,
            this.subCategory,
            this.itemType,
            this.itemPriceType,
            this.itemCurrency,
            this.itemLocation,
            this.conditionOfItem,
            this.dealOption,
            this.user,
            this.isFavourited,
            this.isOwner,
            this.getAddress,
            this.getDelivery});

    Item.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        catId = json['cat_id'];
        subCatId = json['sub_cat_id'];
        itemTypeId = json['item_type_id'];
        itemPriceTypeId = json['item_price_type_id'];
        itemCurrencyId = json['item_currency_id'];
        itemLocationId = json['item_location_id'];
        conditionOfItemId = json['condition_of_item_id'];
        dealOptionRemark = json['deal_option_remark'];
        description = json['description'];
        highlightInfo = json['highlight_info'];
        price = json['price'];
        dealOptionId = json['deal_option_id'];
        brand = json['brand'];
        businessMode = json['business_mode'];
        isSoldOut = json['is_sold_out'];
        title = json['title'];
        address = json['address'];
        lat = json['lat'];
        lng = json['lng'];
        status = json['status'];
        addedDate = json['added_date'];
        addedUserId = json['added_user_id'];
        addedUserName = json['added_user_name'];
        updatedDate = json['updated_date'];
        updatedUserId = json['updated_user_id'];
        updatedFlag = json['updated_flag'];
        touchCount = json['touch_count'];
        favouriteCount = json['favourite_count'];
        isPaid = json['is_paid'];
        isAvailable = json['is_available'];
        isPreOrder = json['is_pre_order'];
        poStart = json['po_start'];
        poEnd = json['po_end'];
        poSlot = json['po_slot'];
        poDelivery = json['po_delivery'];
        isHalal = json['is_halal'];
        weight = json['weight'];
        locationId = json['location_id'];
        locationName = json['location_name'];
        locationType = json['location_type'];
        addedDateStr = json['added_date_str'];
        paidStatus = json['paid_status'];
        photoCount = json['photo_count'];
        defaultPhoto = json['default_photo'] != null
            ? new DefaultPhoto.fromJson(json['default_photo'])
            : null;
        category = json['category'] != null
            ? new Category.fromJson(json['category'])
            : null;
        subCategory = json['sub_category'] != null
            ? new SubCategory.fromJson(json['sub_category'])
            : null;
        itemType = json['item_type'] != null
            ? new ItemType.fromJson(json['item_type'])
            : null;
        itemPriceType = json['item_price_type'] != null
            ? new ItemType.fromJson(json['item_price_type'])
            : null;
        itemCurrency = json['item_currency'] != null
            ? new ItemCurrency.fromJson(json['item_currency'])
            : null;
        itemLocation = json['item_location'] != null
            ? new ItemLocation.fromJson(json['item_location'])
            : null;
        conditionOfItem = json['condition_of_item'] != null
            ? new ConditionOfItem.fromJson(json['condition_of_item'])
            : null;
        dealOption = json['deal_option'] != null
            ? new ConditionOfItem.fromJson(json['deal_option'])
            : null;
        user = json['user'] != null ? new User.fromJson(json['user']) : null;
        isFavourited = json['is_favourited'];
        isOwner = json['is_owner'];
        getAddress = json['get_address'].runtimeType != String
            ? new GetAddress.fromJson(json['get_address'])
            : GetAddress();
        if (json['get_delivery'].runtimeType != String) {
            getDelivery = new List<GetDelivery>();
            json['get_delivery'].forEach((v) {
                getDelivery.add(new GetDelivery.fromJson(v));
            });
        }else{
            getDelivery = new List<GetDelivery>();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['cat_id'] = this.catId;
        data['sub_cat_id'] = this.subCatId;
        data['item_type_id'] = this.itemTypeId;
        data['item_price_type_id'] = this.itemPriceTypeId;
        data['item_currency_id'] = this.itemCurrencyId;
        data['item_location_id'] = this.itemLocationId;
        data['condition_of_item_id'] = this.conditionOfItemId;
        data['deal_option_remark'] = this.dealOptionRemark;
        data['description'] = this.description;
        data['highlight_info'] = this.highlightInfo;
        data['price'] = this.price;
        data['deal_option_id'] = this.dealOptionId;
        data['brand'] = this.brand;
        data['business_mode'] = this.businessMode;
        data['is_sold_out'] = this.isSoldOut;
        data['title'] = this.title;
        data['address'] = this.address;
        data['lat'] = this.lat;
        data['lng'] = this.lng;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        data['added_user_id'] = this.addedUserId;
        data['added_user_name'] = this.addedUserName;
        data['updated_date'] = this.updatedDate;
        data['updated_user_id'] = this.updatedUserId;
        data['updated_flag'] = this.updatedFlag;
        data['touch_count'] = this.touchCount;
        data['favourite_count'] = this.favouriteCount;
        data['is_paid'] = this.isPaid;
        data['is_available'] = this.isAvailable;
        data['is_pre_order'] = this.isPreOrder;
        data['po_start'] = this.poStart;
        data['po_end'] = this.poEnd;
        data['po_slot'] = this.poSlot;
        data['po_delivery'] = this.poDelivery;
        data['is_halal'] = this.isHalal;
        data['weight'] = this.weight;
        data['location_id'] = this.locationId;
        data['location_name'] = this.locationName;
        data['location_type'] = this.locationType;
        data['added_date_str'] = this.addedDateStr;
        data['paid_status'] = this.paidStatus;
        data['photo_count'] = this.photoCount;
        if (this.defaultPhoto != null) {
            data['default_photo'] = this.defaultPhoto.toJson();
        }
        if (this.category != null) {
            data['category'] = this.category.toJson();
        }
        if (this.subCategory != null) {
            data['sub_category'] = this.subCategory.toJson();
        }
        if (this.itemType != null) {
            data['item_type'] = this.itemType.toJson();
        }
        if (this.itemPriceType != null) {
            data['item_price_type'] = this.itemPriceType.toJson();
        }
        if (this.itemCurrency != null) {
            data['item_currency'] = this.itemCurrency.toJson();
        }
        if (this.itemLocation != null) {
            data['item_location'] = this.itemLocation.toJson();
        }
        if (this.conditionOfItem != null) {
            data['condition_of_item'] = this.conditionOfItem.toJson();
        }
        if (this.dealOption != null) {
            data['deal_option'] = this.dealOption.toJson();
        }
        if (this.user != null) {
            data['user'] = this.user.toJson();
        }
        data['is_favourited'] = this.isFavourited;
        data['is_owner'] = this.isOwner;
        if (this.getAddress != null) {
            data['get_address'] = this.getAddress.toJson();
        }
        if (this.getDelivery != null) {
            data['get_delivery'] = this.getDelivery.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class DefaultPhoto {
    String imgId;
    String imgParentId;
    String imgType;
    String imgPath;
    String imgWidth;
    String imgHeight;
    String imgDesc;

    DefaultPhoto(
        {this.imgId,
            this.imgParentId,
            this.imgType,
            this.imgPath,
            this.imgWidth,
            this.imgHeight,
            this.imgDesc});

    DefaultPhoto.fromJson(Map<String, dynamic> json) {
        imgId = json['img_id'];
        imgParentId = json['img_parent_id'];
        imgType = json['img_type'];
        imgPath = json['img_path'];
        imgWidth = json['img_width'];
        imgHeight = json['img_height'];
        imgDesc = json['img_desc'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['img_id'] = this.imgId;
        data['img_parent_id'] = this.imgParentId;
        data['img_type'] = this.imgType;
        data['img_path'] = this.imgPath;
        data['img_width'] = this.imgWidth;
        data['img_height'] = this.imgHeight;
        data['img_desc'] = this.imgDesc;
        return data;
    }
}

class Category {
    String catId;
    String catName;
    String catOrdering;
    String status;
    String addedDate;
    DefaultPhoto defaultPhoto;
    DefaultPhoto defaultIcon;

    Category(
        {this.catId,
            this.catName,
            this.catOrdering,
            this.status,
            this.addedDate,
            this.defaultPhoto,
            this.defaultIcon});

    Category.fromJson(Map<String, dynamic> json) {
        catId = json['cat_id'];
        catName = json['cat_name'];
        catOrdering = json['cat_ordering'];
        status = json['status'];
        addedDate = json['added_date'];
        defaultPhoto = json['default_photo'] != null
            ? new DefaultPhoto.fromJson(json['default_photo'])
            : null;
        defaultIcon = json['default_icon'] != null
            ? new DefaultPhoto.fromJson(json['default_icon'])
            : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cat_id'] = this.catId;
        data['cat_name'] = this.catName;
        data['cat_ordering'] = this.catOrdering;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        if (this.defaultPhoto != null) {
            data['default_photo'] = this.defaultPhoto.toJson();
        }
        if (this.defaultIcon != null) {
            data['default_icon'] = this.defaultIcon.toJson();
        }
        return data;
    }
}

class SubCategory {
    String id;
    String catId;
    String name;
    String status;
    String addedDate;
    String addedUserId;
    String updatedDate;
    String updatedUserId;
    String updatedFlag;
    DefaultPhoto defaultPhoto;

    SubCategory(
        {this.id,
            this.catId,
            this.name,
            this.status,
            this.addedDate,
            this.addedUserId,
            this.updatedDate,
            this.updatedUserId,
            this.updatedFlag,
            this.defaultPhoto});

    SubCategory.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        catId = json['cat_id'];
        name = json['name'];
        status = json['status'];
        addedDate = json['added_date'];
        addedUserId = json['added_user_id'];
        updatedDate = json['updated_date'];
        updatedUserId = json['updated_user_id'];
        updatedFlag = json['updated_flag'];
        defaultPhoto = json['default_photo'] != null
            ? new DefaultPhoto.fromJson(json['default_photo'])
            : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['cat_id'] = this.catId;
        data['name'] = this.name;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        data['added_user_id'] = this.addedUserId;
        data['updated_date'] = this.updatedDate;
        data['updated_user_id'] = this.updatedUserId;
        data['updated_flag'] = this.updatedFlag;
        if (this.defaultPhoto != null) {
            data['default_photo'] = this.defaultPhoto.toJson();
        }
        return data;
    }
}

class ItemType {
    String id;
    String name;
    String status;
    String addedDate;
    String isEmptyObject;

    ItemType(
        {this.id, this.name, this.status, this.addedDate, this.isEmptyObject});

    ItemType.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        status = json['status'];
        addedDate = json['added_date'];
        isEmptyObject = json['is_empty_object'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        data['is_empty_object'] = this.isEmptyObject;
        return data;
    }
}

class ItemCurrency {
    String id;
    String currencyShortForm;
    String currencySymbol;
    String status;
    String addedDate;
    String isEmptyObject;

    ItemCurrency(
        {this.id,
            this.currencyShortForm,
            this.currencySymbol,
            this.status,
            this.addedDate,
            this.isEmptyObject});

    ItemCurrency.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        currencyShortForm = json['currency_short_form'];
        currencySymbol = json['currency_symbol'];
        status = json['status'];
        addedDate = json['added_date'];
        isEmptyObject = json['is_empty_object'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['currency_short_form'] = this.currencyShortForm;
        data['currency_symbol'] = this.currencySymbol;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        data['is_empty_object'] = this.isEmptyObject;
        return data;
    }
}

class ItemLocation {
    String id;
    String name;
    String lat;
    String lng;
    String status;
    String addedDate;
    String isEmptyObject;

    ItemLocation(
        {this.id,
            this.name,
            this.lat,
            this.lng,
            this.status,
            this.addedDate,
            this.isEmptyObject});

    ItemLocation.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        lat = json['lat'];
        lng = json['lng'];
        status = json['status'];
        addedDate = json['added_date'];
        isEmptyObject = json['is_empty_object'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['lat'] = this.lat;
        data['lng'] = this.lng;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        data['is_empty_object'] = this.isEmptyObject;
        return data;
    }
}

class ConditionOfItem {
    String id;
    String name;
    String status;
    String addedDate;

    ConditionOfItem({this.id, this.name, this.status, this.addedDate});

    ConditionOfItem.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        status = json['status'];
        addedDate = json['added_date'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['status'] = this.status;
        data['added_date'] = this.addedDate;
        return data;
    }
}

class User {
    String userId;
    String userIsSysAdmin;
    String facebookId;
    String googleId;
    String phoneId;
    String appleId;
    String userName;
    String userEmail;
    String userPhone;
    String userAddress;
    String city;
    String userAboutMe;
    String userCoverPhoto;
    String userProfilePhoto;
    String roleId;
    String status;
    String isBanned;
    String addedDate;
    String deviceToken;
    String code;
    String overallRating;
    String whatsapp;
    String messenger;
    String followerCount;
    String followingCount;
    String emailVerify;
    String facebookVerify;
    String googleVerify;
    String phoneVerify;
    String appleVerify;
    String ratingCount;
    String isFollowed;
    RatingDetails ratingDetails;

    User(
        {this.userId,
            this.userIsSysAdmin,
            this.facebookId,
            this.googleId,
            this.phoneId,
            this.appleId,
            this.userName,
            this.userEmail,
            this.userPhone,
            this.userAddress,
            this.city,
            this.userAboutMe,
            this.userCoverPhoto,
            this.userProfilePhoto,
            this.roleId,
            this.status,
            this.isBanned,
            this.addedDate,
            this.deviceToken,
            this.code,
            this.overallRating,
            this.whatsapp,
            this.messenger,
            this.followerCount,
            this.followingCount,
            this.emailVerify,
            this.facebookVerify,
            this.googleVerify,
            this.phoneVerify,
            this.appleVerify,
            this.ratingCount,
            this.isFollowed,
            this.ratingDetails});

    User.fromJson(Map<String, dynamic> json) {
        userId = json['user_id'];
        userIsSysAdmin = json['user_is_sys_admin'];
        facebookId = json['facebook_id'];
        googleId = json['google_id'];
        phoneId = json['phone_id'];
        appleId = json['apple_id'];
        userName = json['user_name'];
        userEmail = json['user_email'];
        userPhone = json['user_phone'];
        userAddress = json['user_address'];
        city = json['city'];
        userAboutMe = json['user_about_me'];
        userCoverPhoto = json['user_cover_photo'];
        userProfilePhoto = json['user_profile_photo'];
        roleId = json['role_id'];
        status = json['status'];
        isBanned = json['is_banned'];
        addedDate = json['added_date'];
        deviceToken = json['device_token'];
        code = json['code'];
        overallRating = json['overall_rating'];
        whatsapp = json['whatsapp'];
        messenger = json['messenger'];
        followerCount = json['follower_count'];
        followingCount = json['following_count'];
        emailVerify = json['email_verify'];
        facebookVerify = json['facebook_verify'];
        googleVerify = json['google_verify'];
        phoneVerify = json['phone_verify'];
        appleVerify = json['apple_verify'];
        ratingCount = json['rating_count'];
        isFollowed = json['is_followed'];
        ratingDetails = json['rating_details'] != null
            ? new RatingDetails.fromJson(json['rating_details'])
            : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['user_id'] = this.userId;
        data['user_is_sys_admin'] = this.userIsSysAdmin;
        data['facebook_id'] = this.facebookId;
        data['google_id'] = this.googleId;
        data['phone_id'] = this.phoneId;
        data['apple_id'] = this.appleId;
        data['user_name'] = this.userName;
        data['user_email'] = this.userEmail;
        data['user_phone'] = this.userPhone;
        data['user_address'] = this.userAddress;
        data['city'] = this.city;
        data['user_about_me'] = this.userAboutMe;
        data['user_cover_photo'] = this.userCoverPhoto;
        data['user_profile_photo'] = this.userProfilePhoto;
        data['role_id'] = this.roleId;
        data['status'] = this.status;
        data['is_banned'] = this.isBanned;
        data['added_date'] = this.addedDate;
        data['device_token'] = this.deviceToken;
        data['code'] = this.code;
        data['overall_rating'] = this.overallRating;
        data['whatsapp'] = this.whatsapp;
        data['messenger'] = this.messenger;
        data['follower_count'] = this.followerCount;
        data['following_count'] = this.followingCount;
        data['email_verify'] = this.emailVerify;
        data['facebook_verify'] = this.facebookVerify;
        data['google_verify'] = this.googleVerify;
        data['phone_verify'] = this.phoneVerify;
        data['apple_verify'] = this.appleVerify;
        data['rating_count'] = this.ratingCount;
        data['is_followed'] = this.isFollowed;
        if (this.ratingDetails != null) {
            data['rating_details'] = this.ratingDetails.toJson();
        }
        return data;
    }
}

class RatingDetails {
    String fiveStarCount;
    String fiveStarPercent;
    String fourStarCount;
    String fourStarPercent;
    String threeStarCount;
    String threeStarPercent;
    String twoStarCount;
    String twoStarPercent;
    String oneStarCount;
    String oneStarPercent;
    String totalRatingCount;
    String totalRatingValue;

    RatingDetails(
        {this.fiveStarCount,
            this.fiveStarPercent,
            this.fourStarCount,
            this.fourStarPercent,
            this.threeStarCount,
            this.threeStarPercent,
            this.twoStarCount,
            this.twoStarPercent,
            this.oneStarCount,
            this.oneStarPercent,
            this.totalRatingCount,
            this.totalRatingValue});

    RatingDetails.fromJson(Map<String, dynamic> json) {
        fiveStarCount = json['five_star_count'];
        fiveStarPercent = json['five_star_percent'];
        fourStarCount = json['four_star_count'];
        fourStarPercent = json['four_star_percent'];
        threeStarCount = json['three_star_count'];
        threeStarPercent = json['three_star_percent'];
        twoStarCount = json['two_star_count'];
        twoStarPercent = json['two_star_percent'];
        oneStarCount = json['one_star_count'];
        oneStarPercent = json['one_star_percent'];
        totalRatingCount = json['total_rating_count'];
        totalRatingValue = json['total_rating_value'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['five_star_count'] = this.fiveStarCount;
        data['five_star_percent'] = this.fiveStarPercent;
        data['four_star_count'] = this.fourStarCount;
        data['four_star_percent'] = this.fourStarPercent;
        data['three_star_count'] = this.threeStarCount;
        data['three_star_percent'] = this.threeStarPercent;
        data['two_star_count'] = this.twoStarCount;
        data['two_star_percent'] = this.twoStarPercent;
        data['one_star_count'] = this.oneStarCount;
        data['one_star_percent'] = this.oneStarPercent;
        data['total_rating_count'] = this.totalRatingCount;
        data['total_rating_value'] = this.totalRatingValue;
        return data;
    }
}

class GetAddress {
    String id;
    String bsItemsId;
    String provinceId;
    String province;
    String cityId;
    String city;
    String districtId;
    String district;
    String zipCode;
    String longitude;
    String latitude;
    String fullAddress;
    String contactPerson;
    String nameAddress;
    String createdAt;
    String updatedAt;
    String deletedAt;

    GetAddress(
        {this.id,
            this.bsItemsId,
            this.provinceId,
            this.province,
            this.cityId,
            this.city,
            this.districtId,
            this.district,
            this.zipCode,
            this.longitude,
            this.latitude,
            this.fullAddress,
            this.contactPerson,
            this.nameAddress,
            this.createdAt,
            this.updatedAt,
            this.deletedAt});

    GetAddress.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        bsItemsId = json['bs_items_id'];
        provinceId = json['province_id'];
        province = json['province'];
        cityId = json['city_id'];
        city = json['city'];
        districtId = json['district_id'];
        district = json['district'];
        zipCode = json['zip_code'];
        longitude = json['longitude'];
        latitude = json['latitude'];
        fullAddress = json['full_address'];
        contactPerson = json['contact_person'];
        nameAddress = json['name_address'];
        createdAt = json['created_at'];
        updatedAt = json['updated_at'];
        deletedAt = json['deleted_at'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['bs_items_id'] = this.bsItemsId;
        data['province_id'] = this.provinceId;
        data['province'] = this.province;
        data['city_id'] = this.cityId;
        data['city'] = this.city;
        data['district_id'] = this.districtId;
        data['district'] = this.district;
        data['zip_code'] = this.zipCode;
        data['longitude'] = this.longitude;
        data['latitude'] = this.latitude;
        data['full_address'] = this.fullAddress;
        data['contact_person'] = this.contactPerson;
        data['name_address'] = this.nameAddress;
        data['created_at'] = this.createdAt;
        data['updated_at'] = this.updatedAt;
        data['deleted_at'] = this.deletedAt;
        return data;
    }
}

class GetDelivery {
    String id;
    String bsItemsId;
    String deliveryName;
    String createdAt;
    String updatedAt;
    String deletedAt;

    GetDelivery(
        {this.id,
            this.bsItemsId,
            this.deliveryName,
            this.createdAt,
            this.updatedAt,
            this.deletedAt});

    GetDelivery.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        bsItemsId = json['bs_items_id'];
        deliveryName = json['delivery_name'];
        createdAt = json['created_at'];
        updatedAt = json['updated_at'];
        deletedAt = json['deleted_at'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['bs_items_id'] = this.bsItemsId;
        data['delivery_name'] = this.deliveryName;
        data['created_at'] = this.createdAt;
        data['updated_at'] = this.updatedAt;
        data['deleted_at'] = this.deletedAt;
        return data;
    }
}
