class HotelModel {
  int? status;
  dynamic msg;
  Results? results;

  HotelModel({this.status, this.msg, this.results});

  HotelModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    msg = json["msg"];
    results =
        json["results"] == null ? null : Results.fromJson(json["results"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["msg"] = msg;
    if (results != null) {
      _data["results"] = results?.toJson();
    }
    return _data;
  }
}

class Results {
  List<Data>? data;
  Paging? paging;

  Results({this.data, this.paging});

  Results.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    paging = json["paging"] == null ? null : Paging.fromJson(json["paging"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if (paging != null) {
      _data["paging"] = paging?.toJson();
    }
    return _data;
  }
}

class Paging {
  dynamic previous;
  String? next;
  String? skipped;
  String? results;
  String? totalResults;

  Paging(
      {this.previous,
      this.next,
      this.skipped,
      this.results,
      this.totalResults});

  Paging.fromJson(Map<String, dynamic> json) {
    previous = json["previous"];
    next = json["next"];
    skipped = json["skipped"];
    results = json["results"];
    totalResults = json["total_results"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["previous"] = previous;
    _data["next"] = next;
    _data["skipped"] = skipped;
    _data["results"] = results;
    _data["total_results"] = totalResults;
    return _data;
  }
}

class Data {
  String? locationId;
  String? name;
  String? latitude;
  String? longitude;
  String? numReviews;
  String? timezone;
  String? locationString;
  Photo? photo;
  String? apiDetailUrl;
  List<dynamic>? awards;
  String? doubleclickZone;
  String? preferredMapEngine;
  String? rawRanking;
  String? rankingGeo;
  String? rankingGeoId;
  String? rankingPosition;
  String? rankingDenominator;
  String? rankingCategory;
  String? ranking;
  String? subcategoryType;
  String? subcategoryTypeLabel;
  dynamic distance;
  dynamic distanceString;
  dynamic bearing;
  String? rating;
  bool? isClosed;
  String? openNowText;
  bool? isLongClosed;
  String? priceLevel;
  String? price;
  List<NeighborhoodInfo>? neighborhoodInfo;
  String? hotelClass;
  String? hotelClassAttribution;
  BusinessListings? businessListings;
  SpecialOffers? specialOffers;
  String? description;
  String? webUrl;
  String? writeReview;
  List<Ancestors>? ancestors;
  Category? category;
  List<Subcategory1>? subcategory;
  String? parentDisplayName;
  bool? isJfyEnabled;
  List<dynamic>? nearestMetroStation;
  String? phone;
  String? website;
  AddressObj? addressObj;
  String? address;
  bool? isCandidateForContactInfoSuppression;
  List<dynamic>? amenities;
  String? ownerWebsite;

  Data(
      {this.locationId,
      this.name,
      this.latitude,
      this.longitude,
      this.numReviews,
      this.timezone,
      this.locationString,
      this.photo,
      this.apiDetailUrl,
      this.awards,
      this.doubleclickZone,
      this.preferredMapEngine,
      this.rawRanking,
      this.rankingGeo,
      this.rankingGeoId,
      this.rankingPosition,
      this.rankingDenominator,
      this.rankingCategory,
      this.ranking,
      this.subcategoryType,
      this.subcategoryTypeLabel,
      this.distance,
      this.distanceString,
      this.bearing,
      this.rating,
      this.isClosed,
      this.openNowText,
      this.isLongClosed,
      this.priceLevel,
      this.price,
      this.neighborhoodInfo,
      this.hotelClass,
      this.hotelClassAttribution,
      this.businessListings,
      this.specialOffers,
      this.description,
      this.webUrl,
      this.writeReview,
      this.ancestors,
      this.category,
      this.subcategory,
      this.parentDisplayName,
      this.isJfyEnabled,
      this.nearestMetroStation,
      this.phone,
      this.website,
      this.addressObj,
      this.address,
      this.isCandidateForContactInfoSuppression,
      this.amenities,
      this.ownerWebsite});

  Data.fromJson(Map<String, dynamic> json) {
    locationId = json["location_id"];
    name = json["name"];
    latitude = json["latitude"];
    longitude = json["longitude"];
    numReviews = json["num_reviews"];
    timezone = json["timezone"];
    locationString = json["location_string"];
    photo = json["photo"] == null ? null : Photo.fromJson(json["photo"]);
    apiDetailUrl = json["api_detail_url"];
    awards = json["awards"] ?? [];
    doubleclickZone = json["doubleclick_zone"];
    preferredMapEngine = json["preferred_map_engine"];
    rawRanking = json["raw_ranking"];
    rankingGeo = json["ranking_geo"];
    rankingGeoId = json["ranking_geo_id"];
    rankingPosition = json["ranking_position"];
    rankingDenominator = json["ranking_denominator"];
    rankingCategory = json["ranking_category"];
    ranking = json["ranking"];
    subcategoryType = json["subcategory_type"];
    subcategoryTypeLabel = json["subcategory_type_label"];
    distance = json["distance"];
    distanceString = json["distance_string"];
    bearing = json["bearing"];
    rating = json["rating"];
    isClosed = json["is_closed"];
    openNowText = json["open_now_text"];
    isLongClosed = json["is_long_closed"];
    priceLevel = json["price_level"];
    price = json["price"];
    neighborhoodInfo = json["neighborhood_info"] == null
        ? null
        : (json["neighborhood_info"] as List)
            .map((e) => NeighborhoodInfo.fromJson(e))
            .toList();
    hotelClass = json["hotel_class"];
    hotelClassAttribution = json["hotel_class_attribution"];
    businessListings = json["business_listings"] == null
        ? null
        : BusinessListings.fromJson(json["business_listings"]);
    specialOffers = json["special_offers"] == null
        ? null
        : SpecialOffers.fromJson(json["special_offers"]);
    description = json["description"];
    webUrl = json["web_url"];
    writeReview = json["write_review"];
    ancestors = json["ancestors"] == null
        ? null
        : (json["ancestors"] as List)
            .map((e) => Ancestors.fromJson(e))
            .toList();
    category =
        json["category"] == null ? null : Category.fromJson(json["category"]);
    subcategory = json["subcategory"] == null
        ? null
        : (json["subcategory"] as List)
            .map((e) => Subcategory1.fromJson(e))
            .toList();
    parentDisplayName = json["parent_display_name"];
    isJfyEnabled = json["is_jfy_enabled"];
    nearestMetroStation = json["nearest_metro_station"] ?? [];
    phone = json["phone"];
    website = json["website"];
    addressObj = json["address_obj"] == null
        ? null
        : AddressObj.fromJson(json["address_obj"]);
    address = json["address"];
    isCandidateForContactInfoSuppression =
        json["is_candidate_for_contact_info_suppression"];
    amenities = json["amenities"] ?? [];
    ownerWebsite = json["owner_website"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["location_id"] = locationId;
    _data["name"] = name;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["num_reviews"] = numReviews;
    _data["timezone"] = timezone;
    _data["location_string"] = locationString;
    if (photo != null) {
      _data["photo"] = photo?.toJson();
    }
    _data["api_detail_url"] = apiDetailUrl;
    if (awards != null) {
      _data["awards"] = awards;
    }
    _data["doubleclick_zone"] = doubleclickZone;
    _data["preferred_map_engine"] = preferredMapEngine;
    _data["raw_ranking"] = rawRanking;
    _data["ranking_geo"] = rankingGeo;
    _data["ranking_geo_id"] = rankingGeoId;
    _data["ranking_position"] = rankingPosition;
    _data["ranking_denominator"] = rankingDenominator;
    _data["ranking_category"] = rankingCategory;
    _data["ranking"] = ranking;
    _data["subcategory_type"] = subcategoryType;
    _data["subcategory_type_label"] = subcategoryTypeLabel;
    _data["distance"] = distance;
    _data["distance_string"] = distanceString;
    _data["bearing"] = bearing;
    _data["rating"] = rating;
    _data["is_closed"] = isClosed;
    _data["open_now_text"] = openNowText;
    _data["is_long_closed"] = isLongClosed;
    _data["price_level"] = priceLevel;
    _data["price"] = price;
    if (neighborhoodInfo != null) {
      _data["neighborhood_info"] =
          neighborhoodInfo?.map((e) => e.toJson()).toList();
    }
    _data["hotel_class"] = hotelClass;
    _data["hotel_class_attribution"] = hotelClassAttribution;
    if (businessListings != null) {
      _data["business_listings"] = businessListings?.toJson();
    }
    if (specialOffers != null) {
      _data["special_offers"] = specialOffers?.toJson();
    }
    _data["description"] = description;
    _data["web_url"] = webUrl;
    _data["write_review"] = writeReview;
    if (ancestors != null) {
      _data["ancestors"] = ancestors?.map((e) => e.toJson()).toList();
    }
    if (category != null) {
      _data["category"] = category?.toJson();
    }
    if (subcategory != null) {
      _data["subcategory"] = subcategory?.map((e) => e.toJson()).toList();
    }
    _data["parent_display_name"] = parentDisplayName;
    _data["is_jfy_enabled"] = isJfyEnabled;
    if (nearestMetroStation != null) {
      _data["nearest_metro_station"] = nearestMetroStation;
    }
    _data["phone"] = phone;
    _data["website"] = website;
    if (addressObj != null) {
      _data["address_obj"] = addressObj?.toJson();
    }
    _data["address"] = address;
    _data["is_candidate_for_contact_info_suppression"] =
        isCandidateForContactInfoSuppression;
    if (amenities != null) {
      _data["amenities"] = amenities;
    }
    _data["owner_website"] = ownerWebsite;
    return _data;
  }
}

class AddressObj {
  String? street1;
  dynamic street2;
  String? city;
  String? state;
  String? country;
  String? postalcode;

  AddressObj(
      {this.street1,
      this.street2,
      this.city,
      this.state,
      this.country,
      this.postalcode});

  AddressObj.fromJson(Map<String, dynamic> json) {
    street1 = json["street1"];
    street2 = json["street2"];
    city = json["city"];
    state = json["state"];
    country = json["country"];
    postalcode = json["postalcode"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["street1"] = street1;
    _data["street2"] = street2;
    _data["city"] = city;
    _data["state"] = state;
    _data["country"] = country;
    _data["postalcode"] = postalcode;
    return _data;
  }
}

class Subcategory1 {
  String? key;
  String? name;

  Subcategory1({this.key, this.name});

  Subcategory1.fromJson(Map<String, dynamic> json) {
    key = json["key"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class Category {
  String? key;
  String? name;

  Category({this.key, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    key = json["key"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class Ancestors {
  List<Subcategory>? subcategory;
  String? name;
  dynamic abbrv;
  String? locationId;

  Ancestors({this.subcategory, this.name, this.abbrv, this.locationId});

  Ancestors.fromJson(Map<String, dynamic> json) {
    subcategory = json["subcategory"] == null
        ? null
        : (json["subcategory"] as List)
            .map((e) => Subcategory.fromJson(e))
            .toList();
    name = json["name"];
    abbrv = json["abbrv"];
    locationId = json["location_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (subcategory != null) {
      _data["subcategory"] = subcategory?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["abbrv"] = abbrv;
    _data["location_id"] = locationId;
    return _data;
  }
}

class Subcategory {
  String? key;
  String? name;

  Subcategory({this.key, this.name});

  Subcategory.fromJson(Map<String, dynamic> json) {
    key = json["key"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class SpecialOffers {
  List<dynamic>? desktop;
  List<Mobile>? mobile;

  SpecialOffers({this.desktop, this.mobile});

  SpecialOffers.fromJson(Map<String, dynamic> json) {
    desktop = json["desktop"] ?? [];
    mobile = json["mobile"] == null
        ? null
        : (json["mobile"] as List).map((e) => Mobile.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (desktop != null) {
      _data["desktop"] = desktop;
    }
    if (mobile != null) {
      _data["mobile"] = mobile?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Mobile {
  String? headline;
  String? url;
  String? offerlessClickTrackingUrl;

  Mobile({this.headline, this.url, this.offerlessClickTrackingUrl});

  Mobile.fromJson(Map<String, dynamic> json) {
    headline = json["headline"];
    url = json["url"];
    offerlessClickTrackingUrl = json["offerless_click_tracking_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["headline"] = headline;
    _data["url"] = url;
    _data["offerless_click_tracking_url"] = offerlessClickTrackingUrl;
    return _data;
  }
}

class BusinessListings {
  List<dynamic>? desktopContacts;
  List<MobileContacts>? mobileContacts;

  BusinessListings({this.desktopContacts, this.mobileContacts});

  BusinessListings.fromJson(Map<String, dynamic> json) {
    desktopContacts = json["desktop_contacts"] ?? [];
    mobileContacts = json["mobile_contacts"] == null
        ? null
        : (json["mobile_contacts"] as List)
            .map((e) => MobileContacts.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (desktopContacts != null) {
      _data["desktop_contacts"] = desktopContacts;
    }
    if (mobileContacts != null) {
      _data["mobile_contacts"] =
          mobileContacts?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class MobileContacts {
  String? value;
  String? label;
  String? type;

  MobileContacts({this.value, this.label, this.type});

  MobileContacts.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    label = json["label"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["label"] = label;
    _data["type"] = type;
    return _data;
  }
}

class NeighborhoodInfo {
  String? locationId;
  String? name;

  NeighborhoodInfo({this.locationId, this.name});

  NeighborhoodInfo.fromJson(Map<String, dynamic> json) {
    locationId = json["location_id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["location_id"] = locationId;
    _data["name"] = name;
    return _data;
  }
}

class Photo {
  Images? images;
  bool? isBlessed;
  String? uploadedDate;
  String? caption;
  String? id;
  String? helpfulVotes;
  String? publishedDate;
  dynamic user;

  Photo(
      {this.images,
      this.isBlessed,
      this.uploadedDate,
      this.caption,
      this.id,
      this.helpfulVotes,
      this.publishedDate,
      this.user});

  Photo.fromJson(Map<String, dynamic> json) {
    images = json["images"] == null ? null : Images.fromJson(json["images"]);
    isBlessed = json["is_blessed"];
    uploadedDate = json["uploaded_date"];
    caption = json["caption"];
    id = json["id"];
    helpfulVotes = json["helpful_votes"];
    publishedDate = json["published_date"];
    user = json["user"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (images != null) {
      _data["images"] = images?.toJson();
    }
    _data["is_blessed"] = isBlessed;
    _data["uploaded_date"] = uploadedDate;
    _data["caption"] = caption;
    _data["id"] = id;
    _data["helpful_votes"] = helpfulVotes;
    _data["published_date"] = publishedDate;
    _data["user"] = user;
    return _data;
  }
}

class Images {
  Small? small;
  Thumbnail? thumbnail;
  Original? original;
  Large? large;
  Medium? medium;

  Images({this.small, this.thumbnail, this.original, this.large, this.medium});

  Images.fromJson(Map<String, dynamic> json) {
    small = json["small"] == null ? null : Small.fromJson(json["small"]);
    thumbnail = json["thumbnail"] == null
        ? null
        : Thumbnail.fromJson(json["thumbnail"]);
    original =
        json["original"] == null ? null : Original.fromJson(json["original"]);
    large = json["large"] == null ? null : Large.fromJson(json["large"]);
    medium = json["medium"] == null ? null : Medium.fromJson(json["medium"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (small != null) {
      _data["small"] = small?.toJson();
    }
    if (thumbnail != null) {
      _data["thumbnail"] = thumbnail?.toJson();
    }
    if (original != null) {
      _data["original"] = original?.toJson();
    }
    if (large != null) {
      _data["large"] = large?.toJson();
    }
    if (medium != null) {
      _data["medium"] = medium?.toJson();
    }
    return _data;
  }
}

class Medium {
  String? width;
  String? url;
  String? height;

  Medium({this.width, this.url, this.height});

  Medium.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    url = json["url"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Large {
  String? width;
  String? url;
  String? height;

  Large({this.width, this.url, this.height});

  Large.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    url = json["url"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Original {
  String? width;
  String? url;
  String? height;

  Original({this.width, this.url, this.height});

  Original.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    url = json["url"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Thumbnail {
  String? width;
  String? url;
  String? height;

  Thumbnail({this.width, this.url, this.height});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    url = json["url"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Small {
  String? width;
  String? url;
  String? height;

  Small({this.width, this.url, this.height});

  Small.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    url = json["url"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}
