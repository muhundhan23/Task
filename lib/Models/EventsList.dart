class EventsModel {
  List<Events>? events;
  Meta? meta;

  EventsModel({this.events, this.meta});

  EventsModel.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events?.add(Events.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (events != null) {
      data['events'] = events?.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      data['meta'] = meta?.toJson();
    }
    return data;
  }
}

class Events {
  dynamic type;
  dynamic id;
  dynamic datetimeUtc;
  Venue? venue;
  dynamic datetimeTbd;
  List<Performers>? performers;
  dynamic isOpen;
  List<dynamic>? links;
  dynamic datetimeLocal;
  dynamic timeTbd;
  dynamic shortTitle;
  dynamic visibleUntilUtc;
  Stats? stats;
  List<Taxonomies>? taxonomies;
  dynamic url;
  dynamic score;
  dynamic announceDate;
  dynamic createdAt;
  dynamic dateTbd;
  dynamic title;
  dynamic popularity;
  dynamic description;
  dynamic status;
  AccessMethod? accessMethod;
  dynamic eventPromotion;
  dynamic conditional;
  dynamic enddatetimeUtc;
  List<dynamic>? themes;
  List<dynamic>? domainInformation;
  dynamic generalAdmission;

  Events(
      {this.type,
      this.id,
      this.datetimeUtc,
      this.venue,
      this.datetimeTbd,
      this.performers,
      this.isOpen,
      this.links,
      this.datetimeLocal,
      this.timeTbd,
      this.shortTitle,
      this.visibleUntilUtc,
      this.stats,
      this.taxonomies,
      this.url,
      this.score,
      this.announceDate,
      this.createdAt,
      this.dateTbd,
      this.title,
      this.popularity,
      this.description,
      this.status,
      this.accessMethod,
      this.eventPromotion,
      this.conditional,
      this.enddatetimeUtc,
      this.themes,
      this.domainInformation,
      this.generalAdmission});

  Events.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    datetimeUtc = json['datetime_utc'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    datetimeTbd = json['datetime_tbd'];
    if (json['performers'] != null) {
      performers = <Performers>[];
      json['performers'].forEach((v) {
        performers?.add(Performers.fromJson(v));
      });
    }
    isOpen = json['is_open'];
    if (json['links'] != null) {
      links = <Null>[];
    }
    datetimeLocal = json['datetime_local'];
    timeTbd = json['time_tbd'];
    shortTitle = json['short_title'];
    visibleUntilUtc = json['visible_until_utc'];
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    if (json['taxonomies'] != null) {
      taxonomies = <Taxonomies>[];
      json['taxonomies'].forEach((v) {
        taxonomies?.add(Taxonomies.fromJson(v));
      });
    }
    url = json['url'];
    score = json['score'];
    announceDate = json['announce_date'];
    createdAt = json['created_at'];
    dateTbd = json['date_tbd'];
    title = json['title'];
    popularity = json['popularity'];
    description = json['description'];
    status = json['status'];
    accessMethod = json['access_method'] != null
        ? AccessMethod.fromJson(json['access_method'])
        : null;
    eventPromotion = json['event_promotion'];
    conditional = json['conditional'];
    enddatetimeUtc = json['enddatetime_utc'];
    if (json['themes'] != null) {
      themes = <Null>[];
    }
    if (json['domain_information'] != null) {
      domainInformation = <Null>[];
    }
    generalAdmission = json['general_admission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['datetime_utc'] = datetimeUtc;
    if (venue != null) {
      data['venue'] = venue?.toJson();
    }
    data['datetime_tbd'] = datetimeTbd;
    if (performers != null) {
      data['performers'] = performers?.map((v) => v.toJson()).toList();
    }
    data['is_open'] = isOpen;
    if (links != null) {
      data['links'] = links?.map((v) => v.toJson()).toList();
    }
    data['datetime_local'] = datetimeLocal;
    data['time_tbd'] = timeTbd;
    data['short_title'] = shortTitle;
    data['visible_until_utc'] = visibleUntilUtc;
    if (stats != null) {
      data['stats'] = stats?.toJson();
    }
    if (taxonomies != null) {
      data['taxonomies'] = taxonomies?.map((v) => v.toJson()).toList();
    }
    data['url'] = url;
    data['score'] = score;
    data['announce_date'] = announceDate;
    data['created_at'] = createdAt;
    data['date_tbd'] = dateTbd;
    data['title'] = title;
    data['popularity'] = popularity;
    data['description'] = description;
    data['status'] = status;
    if (accessMethod != null) {
      data['access_method'] = accessMethod?.toJson();
    }
    data['event_promotion'] = eventPromotion;
    data['conditional'] = conditional;
    data['enddatetime_utc'] = enddatetimeUtc;
    if (themes != null) {
      data['themes'] = themes?.map((v) => v.toJson()).toList();
    }
    if (domainInformation != null) {
      data['domain_information'] =
          domainInformation?.map((v) => v.toJson()).toList();
    }
    data['general_admission'] = generalAdmission;
    return data;
  }
}

class Venue {
  dynamic state;
  dynamic nameV2;
  dynamic postalCode;
  dynamic name;
  List<dynamic>? links;
  dynamic timezone;
  dynamic url;
  dynamic score;
  Location? location;
  dynamic address;
  dynamic country;
  dynamic hasUpcomingEvents;
  dynamic numUpcomingEvents;
  dynamic city;
  dynamic slug;
  dynamic extendedAddress;
  dynamic id;
  dynamic popularity;
  AccessMethod? accessMethod;
  dynamic metroCode;
  dynamic capacity;
  dynamic displayLocation;

  Venue(
      {this.state,
      this.nameV2,
      this.postalCode,
      this.name,
      this.links,
      this.timezone,
      this.url,
      this.score,
      this.location,
      this.address,
      this.country,
      this.hasUpcomingEvents,
      this.numUpcomingEvents,
      this.city,
      this.slug,
      this.extendedAddress,
      this.id,
      this.popularity,
      this.accessMethod,
      this.metroCode,
      this.capacity,
      this.displayLocation});

  Venue.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    nameV2 = json['name_v2'];
    postalCode = json['postal_code'];
    name = json['name'];
    if (json['links'] != null) {
      links = <Null>[];
    }
    timezone = json['timezone'];
    url = json['url'];
    score = json['score'];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    address = json['address'];
    country = json['country'];
    hasUpcomingEvents = json['has_upcoming_events'];
    numUpcomingEvents = json['num_upcoming_events'];
    city = json['city'];
    slug = json['slug'];
    extendedAddress = json['extended_address'];
    id = json['id'];
    popularity = json['popularity'];
    accessMethod = json['access_method'] != null
        ? AccessMethod.fromJson(json['access_method'])
        : null;
    metroCode = json['metro_code'];
    capacity = json['capacity'];
    displayLocation = json['display_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['state'] = state;
    data['name_v2'] = nameV2;
    data['postal_code'] = postalCode;
    data['name'] = name;
    if (links != null) {
      data['links'] = links?.map((v) => v.toJson()).toList();
    }
    data['timezone'] = timezone;
    data['url'] = url;
    data['score'] = score;
    if (location != null) {
      data['location'] = location?.toJson();
    }
    data['address'] = address;
    data['country'] = country;
    data['has_upcoming_events'] = hasUpcomingEvents;
    data['num_upcoming_events'] = numUpcomingEvents;
    data['city'] = city;
    data['slug'] = slug;
    data['extended_address'] = extendedAddress;
    data['id'] = id;
    data['popularity'] = popularity;
    if (accessMethod != null) {
      data['access_method'] = accessMethod?.toJson();
    }
    data['metro_code'] = metroCode;
    data['capacity'] = capacity;
    data['display_location'] = displayLocation;
    return data;
  }
}

class Location {
  dynamic lat;
  dynamic lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }
}

class AccessMethod {
  dynamic method;
  dynamic createdAt;
  dynamic employeeOnly;

  AccessMethod({this.method, this.createdAt, this.employeeOnly});

  AccessMethod.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    createdAt = json['created_at'];
    employeeOnly = json['employee_only'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['method'] = method;
    data['created_at'] = createdAt;
    data['employee_only'] = employeeOnly;
    return data;
  }
}

class Performers {
  dynamic type;
  dynamic name;
  dynamic image;
  dynamic id;
  Images? images;
  dynamic divisions;
  dynamic hasUpcomingEvents;
  dynamic primary;
  Stats? stats;
  List<Taxonomies>? taxonomies;
  dynamic imageAttribution;
  dynamic url;
  dynamic score;
  dynamic slug;
  dynamic homeVenueId;
  dynamic shortName;
  dynamic numUpcomingEvents;
  dynamic colors;
  dynamic imageLicense;
  dynamic popularity;
  dynamic homeTeam;
  Location? location;
  dynamic imageRightsMessage;
  dynamic awayTeam;
  List<Genres>? genres;

  Performers(
      {this.type,
      this.name,
      this.image,
      this.id,
      this.images,
      this.divisions,
      this.hasUpcomingEvents,
      this.primary,
      this.stats,
      this.taxonomies,
      this.imageAttribution,
      this.url,
      this.score,
      this.slug,
      this.homeVenueId,
      this.shortName,
      this.numUpcomingEvents,
      this.colors,
      this.imageLicense,
      this.popularity,
      this.homeTeam,
      this.location,
      this.imageRightsMessage,
      this.awayTeam,
      this.genres});

  Performers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    image = json['image'];
    id = json['id'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    divisions = json['divisions'];
    hasUpcomingEvents = json['has_upcoming_events'];
    primary = json['primary'];
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    if (json['taxonomies'] != null) {
      taxonomies = <Taxonomies>[];
      json['taxonomies'].forEach((v) {
        taxonomies?.add(Taxonomies.fromJson(v));
      });
    }
    imageAttribution = json['image_attribution'];
    url = json['url'];
    score = json['score'];
    slug = json['slug'];
    homeVenueId = json['home_venue_id'];
    shortName = json['short_name'];
    numUpcomingEvents = json['num_upcoming_events'];
    colors = json['colors'];
    imageLicense = json['image_license'];
    popularity = json['popularity'];
    homeTeam = json['home_team'];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    imageRightsMessage = json['image_rights_message'];
    awayTeam = json['away_team'];
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres?.add(Genres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['name'] = name;
    data['image'] = image;
    data['id'] = id;
    if (images != null) {
      data['images'] = images?.toJson();
    }
    data['divisions'] = divisions;
    data['has_upcoming_events'] = hasUpcomingEvents;
    data['primary'] = primary;
    if (stats != null) {
      data['stats'] = stats?.toJson();
    }
    if (taxonomies != null) {
      data['taxonomies'] = taxonomies?.map((v) => v.toJson()).toList();
    }
    data['image_attribution'] = imageAttribution;
    data['url'] = url;
    data['score'] = score;
    data['slug'] = slug;
    data['home_venue_id'] = homeVenueId;
    data['short_name'] = shortName;
    data['num_upcoming_events'] = numUpcomingEvents;
    data['colors'] = colors;
    data['image_license'] = imageLicense;
    data['popularity'] = popularity;
    data['home_team'] = homeTeam;
    if (location != null) {
      data['location'] = location?.toJson();
    }
    data['image_rights_message'] = imageRightsMessage;
    data['away_team'] = awayTeam;
    if (genres != null) {
      data['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  dynamic huge;

  Images({this.huge});

  Images.fromJson(Map<String, dynamic> json) {
    huge = json['huge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['huge'] = huge;
    return data;
  }
}

class Stats {
  dynamic eventCount;

  Stats({this.eventCount});

  Stats.fromJson(Map<String, dynamic> json) {
    eventCount = json['event_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['event_count'] = eventCount;
    return data;
  }
}

class Taxonomies {
  dynamic id;
  dynamic name;
  dynamic parentId;
  DocumentSource? documentSource;
  dynamic rank;

  Taxonomies(
      {this.id, this.name, this.parentId, this.documentSource, this.rank});

  Taxonomies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    documentSource = json['document_source'] != null
        ? DocumentSource.fromJson(json['document_source'])
        : null;
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['parent_id'] = parentId;
    if (documentSource != null) {
      data['document_source'] = documentSource?.toJson();
    }
    data['rank'] = rank;
    return data;
  }
}

class DocumentSource {
  dynamic sourceType;
  dynamic generationType;

  DocumentSource({this.sourceType, this.generationType});

  DocumentSource.fromJson(Map<String, dynamic> json) {
    sourceType = json['source_type'];
    generationType = json['generation_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source_type'] = sourceType;
    data['generation_type'] = generationType;
    return data;
  }
}

class Genres {
  dynamic id;
  dynamic name;
  dynamic slug;
  dynamic primary;
  Images? images;
  dynamic image;
  DocumentSource? documentSource;

  Genres(
      {this.id,
      this.name,
      this.slug,
      this.primary,
      this.images,
      this.image,
      this.documentSource});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    primary = json['primary'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    image = json['image'];
    documentSource = json['document_source'] != null
        ? DocumentSource.fromJson(json['document_source'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['primary'] = primary;
    if (images != null) {
      data['images'] = images?.toJson();
    }
    data['image'] = image;
    if (documentSource != null) {
      data['document_source'] = documentSource?.toJson();
    }
    return data;
  }
}

class ImageData {
  dynamic s1200x525;
  dynamic s1200x627;
  dynamic s136x136;
  dynamic s500700;
  dynamic s800x320;
  dynamic banner;
  dynamic block;
  dynamic criteo130160;
  dynamic criteo170235;
  dynamic criteo205100;
  dynamic criteo400300;
  dynamic fb100x72;
  dynamic fb600315;
  dynamic huge;
  dynamic ipadEventModal;
  dynamic ipadHeader;
  dynamic ipadMiniExplore;
  dynamic mongo;
  dynamic squareMid;
  dynamic triggitFbAd;

  ImageData(
      {this.s1200x525,
      this.s1200x627,
      this.s136x136,
      this.s500700,
      this.s800x320,
      this.banner,
      this.block,
      this.criteo130160,
      this.criteo170235,
      this.criteo205100,
      this.criteo400300,
      this.fb100x72,
      this.fb600315,
      this.huge,
      this.ipadEventModal,
      this.ipadHeader,
      this.ipadMiniExplore,
      this.mongo,
      this.squareMid,
      this.triggitFbAd});

  ImageData.fromJson(Map<String, dynamic> json) {
    s1200x525 = json['1200x525'];
    s1200x627 = json['1200x627'];
    s136x136 = json['136x136'];
    s500700 = json['500_700'];
    s800x320 = json['800x320'];
    banner = json['banner'];
    block = json['block'];
    criteo130160 = json['criteo_130_160'];
    criteo170235 = json['criteo_170_235'];
    criteo205100 = json['criteo_205_100'];
    criteo400300 = json['criteo_400_300'];
    fb100x72 = json['fb_100x72'];
    fb600315 = json['fb_600_315'];
    huge = json['huge'];
    ipadEventModal = json['ipad_event_modal'];
    ipadHeader = json['ipad_header'];
    ipadMiniExplore = json['ipad_mini_explore'];
    mongo = json['mongo'];
    squareMid = json['square_mid'];
    triggitFbAd = json['triggit_fb_ad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['1200x525'] = s1200x525;
    data['1200x627'] = s1200x627;
    data['136x136'] = s136x136;
    data['500_700'] = s500700;
    data['800x320'] = s800x320;
    data['banner'] = banner;
    data['block'] = block;
    data['criteo_130_160'] = criteo130160;
    data['criteo_170_235'] = criteo170235;
    data['criteo_205_100'] = criteo205100;
    data['criteo_400_300'] = criteo400300;
    data['fb_100x72'] = fb100x72;
    data['fb_600_315'] = fb600315;
    data['huge'] = huge;
    data['ipad_event_modal'] = ipadEventModal;
    data['ipad_header'] = ipadHeader;
    data['ipad_mini_explore'] = ipadMiniExplore;
    data['mongo'] = mongo;
    data['square_mid'] = squareMid;
    data['triggit_fb_ad'] = triggitFbAd;
    return data;
  }
}

class States {
  dynamic listingCount;
  dynamic averagePrice;
  dynamic lowestPriceGoodDeals;
  dynamic lowestPrice;
  dynamic highestPrice;
  dynamic visibleListingCount;
  List<int>? dqBucketCounts;
  dynamic medianPrice;
  dynamic lowestSgBasePrice;
  dynamic lowestSgBasePriceGoodDeals;

  States(
      {this.listingCount,
      this.averagePrice,
      this.lowestPriceGoodDeals,
      this.lowestPrice,
      this.highestPrice,
      this.visibleListingCount,
      this.dqBucketCounts,
      this.medianPrice,
      this.lowestSgBasePrice,
      this.lowestSgBasePriceGoodDeals});

  States.fromJson(Map<String, dynamic> json) {
    listingCount = json['listing_count'];
    averagePrice = json['average_price'];
    lowestPriceGoodDeals = json['lowest_price_good_deals'];
    lowestPrice = json['lowest_price'];
    highestPrice = json['highest_price'];
    visibleListingCount = json['visible_listing_count'];
    dqBucketCounts = json['dq_bucket_counts'].cast<int>();
    medianPrice = json['median_price'];
    lowestSgBasePrice = json['lowest_sg_base_price'];
    lowestSgBasePriceGoodDeals = json['lowest_sg_base_price_good_deals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['listing_count'] = listingCount;
    data['average_price'] = averagePrice;
    data['lowest_price_good_deals'] = lowestPriceGoodDeals;
    data['lowest_price'] = lowestPrice;
    data['highest_price'] = highestPrice;
    data['visible_listing_count'] = visibleListingCount;
    data['dq_bucket_counts'] = dqBucketCounts;
    data['median_price'] = medianPrice;
    data['lowest_sg_base_price'] = lowestSgBasePrice;
    data['lowest_sg_base_price_good_deals'] = lowestSgBasePriceGoodDeals;
    return data;
  }
}

class Taxonomie {
  dynamic id;
  dynamic name;
  dynamic parentId;
  dynamic rank;

  Taxonomie({this.id, this.name, this.parentId, this.rank});

  Taxonomie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['parent_id'] = parentId;
    data['rank'] = rank;
    return data;
  }
}

class Meta {
  dynamic total;
  dynamic took;
  dynamic page;
  dynamic perPage;
  dynamic geolocation;

  Meta({this.total, this.took, this.page, this.perPage, this.geolocation});

  Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    took = json['took'];
    page = json['page'];
    perPage = json['per_page'];
    geolocation = json['geolocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['took'] = took;
    data['page'] = page;
    data['per_page'] = perPage;
    data['geolocation'] = geolocation;
    return data;
  }
}
