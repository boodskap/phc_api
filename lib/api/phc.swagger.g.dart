// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phc.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

ListReq _$ListReqFromJson(Map<String, dynamic> json) => ListReq(
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$ListReqToJson(ListReq instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

ListRes _$ListResFromJson(Map<String, dynamic> json) => ListRes(
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$ListResToJson(ListRes instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'total': instance.total,
    };

TotalRes _$TotalResFromJson(Map<String, dynamic> json) => TotalRes(
      availableCount: json['available_count'] as int,
      shortageCount: json['shortage_count'] as int,
      nonAvailableCount: json['non_available_count'] as int,
    );

Map<String, dynamic> _$TotalResToJson(TotalRes instance) => <String, dynamic>{
      'available_count': instance.availableCount,
      'shortage_count': instance.shortageCount,
      'non_available_count': instance.nonAvailableCount,
    };

PatientTotalRes _$PatientTotalResFromJson(Map<String, dynamic> json) =>
    PatientTotalRes(
      maleCount: json['male_count'] as int,
      femaleCount: json['female_count'] as int,
      generalCount: json['general_count'] as int,
      pregnantCount: json['pregnant_count'] as int,
      infantCount: json['infant_count'] as int,
    );

Map<String, dynamic> _$PatientTotalResToJson(PatientTotalRes instance) =>
    <String, dynamic>{
      'male_count': instance.maleCount,
      'female_count': instance.femaleCount,
      'general_count': instance.generalCount,
      'pregnant_count': instance.pregnantCount,
      'infant_count': instance.infantCount,
    };

VaccineTotalRes _$VaccineTotalResFromJson(Map<String, dynamic> json) =>
    VaccineTotalRes(
      availableCount: json['available_count'] as int,
      shortageCount: json['shortage_count'] as int,
      nonAvailableCount: json['non_available_count'] as int,
    );

Map<String, dynamic> _$VaccineTotalResToJson(VaccineTotalRes instance) =>
    <String, dynamic>{
      'available_count': instance.availableCount,
      'shortage_count': instance.shortageCount,
      'non_available_count': instance.nonAvailableCount,
    };

MedicineTotalRes _$MedicineTotalResFromJson(Map<String, dynamic> json) =>
    MedicineTotalRes(
      availableCount: json['available_count'] as int,
      shortageCount: json['shortage_count'] as int,
      nonAvailableCount: json['non_available_count'] as int,
    );

Map<String, dynamic> _$MedicineTotalResToJson(MedicineTotalRes instance) =>
    <String, dynamic>{
      'available_count': instance.availableCount,
      'shortage_count': instance.shortageCount,
      'non_available_count': instance.nonAvailableCount,
    };

EquipmentTotalRes _$EquipmentTotalResFromJson(Map<String, dynamic> json) =>
    EquipmentTotalRes(
      electronicsCount: json['electronics_count'] as int,
      utensilsCount: json['utensils_count'] as int,
      furnituresCount: json['furnitures_count'] as int,
    );

Map<String, dynamic> _$EquipmentTotalResToJson(EquipmentTotalRes instance) =>
    <String, dynamic>{
      'electronics_count': instance.electronicsCount,
      'utensils_count': instance.utensilsCount,
      'furnitures_count': instance.furnituresCount,
    };

BaseEntity _$BaseEntityFromJson(Map<String, dynamic> json) => BaseEntity(
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$BaseEntityToJson(BaseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rtype': instance.rtype,
      'cstamp': instance.cstamp,
      'ustamp': instance.ustamp,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      fname: json['fname'] as String? ?? '',
      lname: json['lname'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      country: json['country'] as String? ?? '',
      zipcode: json['zipcode'] as String? ?? '',
      companyname: json['companyname'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) {
  final val = <String, dynamic>{
    'fname': instance.fname,
    'lname': instance.lname,
    'email': instance.email,
    'phone': instance.phone,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('zipcode', instance.zipcode);
  writeNotNull('companyname', instance.companyname);
  return val;
}

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) => ProfileInfo(
      userId: json['user_id'] as String? ?? '',
      role: json['role'] as String? ?? '',
      ustamp: json['ustamp'] as int,
      rtype: json['rtype'] as String? ?? '',
      fname: json['fname'] as String? ?? '',
      lname: json['lname'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      country: json['country'] as String? ?? '',
      zipcode: json['zipcode'] as String? ?? '',
      companyname: json['companyname'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileInfoToJson(ProfileInfo instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
    'role': instance.role,
    'ustamp': instance.ustamp,
    'rtype': instance.rtype,
    'fname': instance.fname,
    'lname': instance.lname,
    'email': instance.email,
    'phone': instance.phone,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('zipcode', instance.zipcode);
  writeNotNull('companyname', instance.companyname);
  return val;
}

ProfileRes _$ProfileResFromJson(Map<String, dynamic> json) => ProfileRes(
      profile: json['profile'] == null
          ? null
          : ProfileInfo.fromJson(json['profile'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileResToJson(ProfileRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile', instance.profile?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

Patient _$PatientFromJson(Map<String, dynamic> json) => Patient(
      patientType: json['patient_type'] as String? ?? '',
      patientName: json['patient_name'] as String? ?? '',
      patientId: json['patient_id'] as String? ?? '',
      dob: json['dob'] as String? ?? '',
      age: json['age'] as int,
      gender: json['gender'] as String? ?? '',
      phone1: json['phone_1'] as String? ?? '',
      phone2: json['phone_2'] as String? ?? '',
      motherName: json['mother_name'] as String? ?? '',
      fatherName: json['father_name'] as String? ?? '',
      district: json['district'] as String? ?? '',
      state: json['state'] as String? ?? '',
      pincode: json['pincode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      previousVaccine: json['previous_vaccine'] as String? ?? '',
      nextVaccine: json['next_vaccine'] as String? ?? '',
      previousAdministration: json['previous_administration'] as String? ?? '',
      nextAdministration: json['next_administration'] as String? ?? '',
      allergies: json['allergies'] as String? ?? '',
    );

Map<String, dynamic> _$PatientToJson(Patient instance) {
  final val = <String, dynamic>{
    'patient_type': instance.patientType,
    'patient_name': instance.patientName,
    'patient_id': instance.patientId,
    'dob': instance.dob,
    'age': instance.age,
    'gender': instance.gender,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_1', instance.phone1);
  writeNotNull('phone_2', instance.phone2);
  writeNotNull('mother_name', instance.motherName);
  writeNotNull('father_name', instance.fatherName);
  writeNotNull('district', instance.district);
  writeNotNull('state', instance.state);
  writeNotNull('pincode', instance.pincode);
  writeNotNull('address', instance.address);
  writeNotNull('previous_vaccine', instance.previousVaccine);
  writeNotNull('next_vaccine', instance.nextVaccine);
  writeNotNull('previous_administration', instance.previousAdministration);
  writeNotNull('next_administration', instance.nextAdministration);
  writeNotNull('allergies', instance.allergies);
  return val;
}

PatientInfo _$PatientInfoFromJson(Map<String, dynamic> json) => PatientInfo(
      patientType: json['patient_type'] as String? ?? '',
      patientName: json['patient_name'] as String? ?? '',
      patientId: json['patient_id'] as String? ?? '',
      dob: json['dob'] as String? ?? '',
      age: json['age'] as int,
      gender: json['gender'] as String? ?? '',
      phone1: json['phone_1'] as String? ?? '',
      phone2: json['phone_2'] as String? ?? '',
      motherName: json['mother_name'] as String? ?? '',
      fatherName: json['father_name'] as String? ?? '',
      district: json['district'] as String? ?? '',
      state: json['state'] as String? ?? '',
      pincode: json['pincode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      previousVaccine: json['previous_vaccine'] as String? ?? '',
      nextVaccine: json['next_vaccine'] as String? ?? '',
      previousAdministration: json['previous_administration'] as String? ?? '',
      nextAdministration: json['next_administration'] as String? ?? '',
      allergies: json['allergies'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$PatientInfoToJson(PatientInfo instance) {
  final val = <String, dynamic>{
    'patient_type': instance.patientType,
    'patient_name': instance.patientName,
    'patient_id': instance.patientId,
    'dob': instance.dob,
    'age': instance.age,
    'gender': instance.gender,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_1', instance.phone1);
  writeNotNull('phone_2', instance.phone2);
  writeNotNull('mother_name', instance.motherName);
  writeNotNull('father_name', instance.fatherName);
  writeNotNull('district', instance.district);
  writeNotNull('state', instance.state);
  writeNotNull('pincode', instance.pincode);
  writeNotNull('address', instance.address);
  writeNotNull('previous_vaccine', instance.previousVaccine);
  writeNotNull('next_vaccine', instance.nextVaccine);
  writeNotNull('previous_administration', instance.previousAdministration);
  writeNotNull('next_administration', instance.nextAdministration);
  writeNotNull('allergies', instance.allergies);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

PatientObject _$PatientObjectFromJson(Map<String, dynamic> json) =>
    PatientObject(
      administredVaccines: json['administred_vaccines'] as String? ?? '',
      patientType: json['patient_type'] as String? ?? '',
      patientName: json['patient_name'] as String? ?? '',
      patientId: json['patient_id'] as String? ?? '',
      dob: json['dob'] as String? ?? '',
      age: json['age'] as int,
      gender: json['gender'] as String? ?? '',
      phone1: json['phone_1'] as String? ?? '',
      phone2: json['phone_2'] as String? ?? '',
      motherName: json['mother_name'] as String? ?? '',
      fatherName: json['father_name'] as String? ?? '',
      district: json['district'] as String? ?? '',
      state: json['state'] as String? ?? '',
      pincode: json['pincode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      previousVaccine: json['previous_vaccine'] as String? ?? '',
      nextVaccine: json['next_vaccine'] as String? ?? '',
      previousAdministration: json['previous_administration'] as String? ?? '',
      nextAdministration: json['next_administration'] as String? ?? '',
      allergies: json['allergies'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$PatientObjectToJson(PatientObject instance) {
  final val = <String, dynamic>{
    'administred_vaccines': instance.administredVaccines,
    'patient_type': instance.patientType,
    'patient_name': instance.patientName,
    'patient_id': instance.patientId,
    'dob': instance.dob,
    'age': instance.age,
    'gender': instance.gender,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone_1', instance.phone1);
  writeNotNull('phone_2', instance.phone2);
  writeNotNull('mother_name', instance.motherName);
  writeNotNull('father_name', instance.fatherName);
  writeNotNull('district', instance.district);
  writeNotNull('state', instance.state);
  writeNotNull('pincode', instance.pincode);
  writeNotNull('address', instance.address);
  writeNotNull('previous_vaccine', instance.previousVaccine);
  writeNotNull('next_vaccine', instance.nextVaccine);
  writeNotNull('previous_administration', instance.previousAdministration);
  writeNotNull('next_administration', instance.nextAdministration);
  writeNotNull('allergies', instance.allergies);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

PatientRes _$PatientResFromJson(Map<String, dynamic> json) => PatientRes(
      patient: json['patient'] == null
          ? null
          : PatientObject.fromJson(json['patient'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$PatientResToJson(PatientRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patient', instance.patient?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

PatientArray _$PatientArrayFromJson(Map<String, dynamic> json) => PatientArray(
      patients: (json['patients'] as List<dynamic>?)
              ?.map((e) => PatientObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PatientArrayToJson(PatientArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patients', instance.patients?.map((e) => e.toJson()).toList());
  return val;
}

PatientArrayRes _$PatientArrayResFromJson(Map<String, dynamic> json) =>
    PatientArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      maleCount: json['male_count'] as int,
      femaleCount: json['female_count'] as int,
      generalCount: json['general_count'] as int,
      pregnantCount: json['pregnant_count'] as int,
      infantCount: json['infant_count'] as int,
      patients: (json['patients'] as List<dynamic>?)
              ?.map((e) => PatientObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PatientArrayResToJson(PatientArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  val['male_count'] = instance.maleCount;
  val['female_count'] = instance.femaleCount;
  val['general_count'] = instance.generalCount;
  val['pregnant_count'] = instance.pregnantCount;
  val['infant_count'] = instance.infantCount;
  writeNotNull('patients', instance.patients?.map((e) => e.toJson()).toList());
  return val;
}

Vaccine _$VaccineFromJson(Map<String, dynamic> json) => Vaccine(
      vaccineName: json['vaccine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      dosage: json['dosage'] as int?,
      storageCondition: json['storage_condition'] as int?,
    );

Map<String, dynamic> _$VaccineToJson(Vaccine instance) {
  final val = <String, dynamic>{
    'vaccine_name': instance.vaccineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('dosage', instance.dosage);
  writeNotNull('storage_condition', instance.storageCondition);
  return val;
}

VaccineInfo _$VaccineInfoFromJson(Map<String, dynamic> json) => VaccineInfo(
      vaccineName: json['vaccine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      dosage: json['dosage'] as int?,
      storageCondition: json['storage_condition'] as int?,
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$VaccineInfoToJson(VaccineInfo instance) {
  final val = <String, dynamic>{
    'vaccine_name': instance.vaccineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('dosage', instance.dosage);
  writeNotNull('storage_condition', instance.storageCondition);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

VaccineRes _$VaccineResFromJson(Map<String, dynamic> json) => VaccineRes(
      vaccine: json['vaccine'] == null
          ? null
          : VaccineInfo.fromJson(json['vaccine'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$VaccineResToJson(VaccineRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccine', instance.vaccine?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

VaccineObject _$VaccineObjectFromJson(Map<String, dynamic> json) =>
    VaccineObject(
      availability: json['availability'] as String? ?? '',
      daysLeft: json['days_left'] as String? ?? '',
      vaccineName: json['vaccine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      dosage: json['dosage'] as int?,
      storageCondition: json['storage_condition'] as int?,
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$VaccineObjectToJson(VaccineObject instance) {
  final val = <String, dynamic>{
    'availability': instance.availability,
    'days_left': instance.daysLeft,
    'vaccine_name': instance.vaccineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('dosage', instance.dosage);
  writeNotNull('storage_condition', instance.storageCondition);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

VaccineGetRes _$VaccineGetResFromJson(Map<String, dynamic> json) =>
    VaccineGetRes(
      vaccine: json['vaccine'] == null
          ? null
          : VaccineObject.fromJson(json['vaccine'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$VaccineGetResToJson(VaccineGetRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccine', instance.vaccine?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

VaccineArray _$VaccineArrayFromJson(Map<String, dynamic> json) => VaccineArray(
      vaccines: (json['vaccines'] as List<dynamic>?)
              ?.map((e) => VaccineObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VaccineArrayToJson(VaccineArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccines', instance.vaccines?.map((e) => e.toJson()).toList());
  return val;
}

VaccineArrayRes _$VaccineArrayResFromJson(Map<String, dynamic> json) =>
    VaccineArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      availableCount: json['available_count'] as int,
      shortageCount: json['shortage_count'] as int,
      nonAvailableCount: json['non_available_count'] as int,
      vaccines: (json['vaccines'] as List<dynamic>?)
              ?.map((e) => VaccineObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VaccineArrayResToJson(VaccineArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  val['available_count'] = instance.availableCount;
  val['shortage_count'] = instance.shortageCount;
  val['non_available_count'] = instance.nonAvailableCount;
  writeNotNull('vaccines', instance.vaccines?.map((e) => e.toJson()).toList());
  return val;
}

Medicine _$MedicineFromJson(Map<String, dynamic> json) => Medicine(
      medicineName: json['medicine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      storageCondition: json['storage_condition'] as int?,
    );

Map<String, dynamic> _$MedicineToJson(Medicine instance) {
  final val = <String, dynamic>{
    'medicine_name': instance.medicineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('storage_condition', instance.storageCondition);
  return val;
}

MedicineInfo _$MedicineInfoFromJson(Map<String, dynamic> json) => MedicineInfo(
      medicineName: json['medicine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      storageCondition: json['storage_condition'] as int?,
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$MedicineInfoToJson(MedicineInfo instance) {
  final val = <String, dynamic>{
    'medicine_name': instance.medicineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('storage_condition', instance.storageCondition);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

MedicineRes _$MedicineResFromJson(Map<String, dynamic> json) => MedicineRes(
      medicine: json['medicine'] == null
          ? null
          : MedicineInfo.fromJson(json['medicine'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$MedicineResToJson(MedicineRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('medicine', instance.medicine?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

MedicineObject _$MedicineObjectFromJson(Map<String, dynamic> json) =>
    MedicineObject(
      availability: json['availability'] as String? ?? '',
      daysLeft: json['days_left'] as String? ?? '',
      medicineName: json['medicine_name'] as String? ?? '',
      quantity: json['quantity'] as int,
      batchNo: json['batch_no'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      manufactDate: json['manufact_date'] as String? ?? '',
      expireDate: json['expire_date'] as String? ?? '',
      storageCondition: json['storage_condition'] as int?,
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$MedicineObjectToJson(MedicineObject instance) {
  final val = <String, dynamic>{
    'availability': instance.availability,
    'days_left': instance.daysLeft,
    'medicine_name': instance.medicineName,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_no', instance.batchNo);
  writeNotNull('brand_name', instance.brandName);
  val['manufact_date'] = instance.manufactDate;
  val['expire_date'] = instance.expireDate;
  writeNotNull('storage_condition', instance.storageCondition);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

MedicineGetRes _$MedicineGetResFromJson(Map<String, dynamic> json) =>
    MedicineGetRes(
      vaccine: json['vaccine'] == null
          ? null
          : MedicineObject.fromJson(json['vaccine'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$MedicineGetResToJson(MedicineGetRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccine', instance.vaccine?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

MedicineArray _$MedicineArrayFromJson(Map<String, dynamic> json) =>
    MedicineArray(
      medicines: (json['medicines'] as List<dynamic>?)
              ?.map((e) => MedicineObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MedicineArrayToJson(MedicineArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'medicines', instance.medicines?.map((e) => e.toJson()).toList());
  return val;
}

MedicineArrayRes _$MedicineArrayResFromJson(Map<String, dynamic> json) =>
    MedicineArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      availableCount: json['available_count'] as int,
      shortageCount: json['shortage_count'] as int,
      nonAvailableCount: json['non_available_count'] as int,
      medicines: (json['medicines'] as List<dynamic>?)
              ?.map((e) => MedicineObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MedicineArrayResToJson(MedicineArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  val['available_count'] = instance.availableCount;
  val['shortage_count'] = instance.shortageCount;
  val['non_available_count'] = instance.nonAvailableCount;
  writeNotNull(
      'medicines', instance.medicines?.map((e) => e.toJson()).toList());
  return val;
}

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment(
      equipmentName: json['equipment_name'] as String? ?? '',
      equipmentId: json['equipment_id'] as String? ?? '',
      quantity: json['quantity'] as int,
      equipmentType: json['equipment_type'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
    );

Map<String, dynamic> _$EquipmentToJson(Equipment instance) {
  final val = <String, dynamic>{
    'equipment_name': instance.equipmentName,
    'equipment_id': instance.equipmentId,
    'quantity': instance.quantity,
    'equipment_type': instance.equipmentType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand_name', instance.brandName);
  return val;
}

EquipmentInfo _$EquipmentInfoFromJson(Map<String, dynamic> json) =>
    EquipmentInfo(
      equipmentName: json['equipment_name'] as String? ?? '',
      equipmentId: json['equipment_id'] as String? ?? '',
      quantity: json['quantity'] as int,
      equipmentType: json['equipment_type'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$EquipmentInfoToJson(EquipmentInfo instance) {
  final val = <String, dynamic>{
    'equipment_name': instance.equipmentName,
    'equipment_id': instance.equipmentId,
    'quantity': instance.quantity,
    'equipment_type': instance.equipmentType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand_name', instance.brandName);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

EquipmentRes _$EquipmentResFromJson(Map<String, dynamic> json) => EquipmentRes(
      equipment: json['equipment'] == null
          ? null
          : EquipmentInfo.fromJson(json['equipment'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$EquipmentResToJson(EquipmentRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equipment', instance.equipment?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

EquipmentObject _$EquipmentObjectFromJson(Map<String, dynamic> json) =>
    EquipmentObject(
      availability: json['availability'] as String? ?? '',
      equipmentName: json['equipment_name'] as String? ?? '',
      equipmentId: json['equipment_id'] as String? ?? '',
      quantity: json['quantity'] as int,
      equipmentType: json['equipment_type'] as String? ?? '',
      brandName: json['brand_name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$EquipmentObjectToJson(EquipmentObject instance) {
  final val = <String, dynamic>{
    'availability': instance.availability,
    'equipment_name': instance.equipmentName,
    'equipment_id': instance.equipmentId,
    'quantity': instance.quantity,
    'equipment_type': instance.equipmentType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand_name', instance.brandName);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

EquipmentGetRes _$EquipmentGetResFromJson(Map<String, dynamic> json) =>
    EquipmentGetRes(
      vaccine: json['vaccine'] == null
          ? null
          : EquipmentObject.fromJson(json['vaccine'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$EquipmentGetResToJson(EquipmentGetRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccine', instance.vaccine?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

EquipmentArray _$EquipmentArrayFromJson(Map<String, dynamic> json) =>
    EquipmentArray(
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) => EquipmentObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EquipmentArrayToJson(EquipmentArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equipments', instance.equipments?.map((e) => e.toJson()).toList());
  return val;
}

EquipmentArrayRes _$EquipmentArrayResFromJson(Map<String, dynamic> json) =>
    EquipmentArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      electronicsCount: json['electronics_count'] as int,
      utensilsCount: json['utensils_count'] as int,
      furnituresCount: json['furnitures_count'] as int,
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) => EquipmentObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EquipmentArrayResToJson(EquipmentArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  val['electronics_count'] = instance.electronicsCount;
  val['utensils_count'] = instance.utensilsCount;
  val['furnitures_count'] = instance.furnituresCount;
  writeNotNull(
      'equipments', instance.equipments?.map((e) => e.toJson()).toList());
  return val;
}

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      pid: json['pid'] as String? ?? '',
      patientId: json['patient_id'] as String? ?? '',
      patientName: json['patient_name'] as String? ?? '',
      previousVaccine: json['previous_vaccine'] as String? ?? '',
      nextVaccine: json['next_vaccine'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      status: notificationStatusNullableFromJson(json['status']),
      results: json['results'] as String? ?? '',
      errors: json['errors'] as String? ?? '',
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) {
  final val = <String, dynamic>{
    'pid': instance.pid,
    'patient_id': instance.patientId,
    'patient_name': instance.patientName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previous_vaccine', instance.previousVaccine);
  writeNotNull('next_vaccine', instance.nextVaccine);
  writeNotNull('phone', instance.phone);
  writeNotNull('status', notificationStatusNullableToJson(instance.status));
  writeNotNull('results', instance.results);
  writeNotNull('errors', instance.errors);
  return val;
}

NotificationInfo _$NotificationInfoFromJson(Map<String, dynamic> json) =>
    NotificationInfo(
      pid: json['pid'] as String? ?? '',
      patientId: json['patient_id'] as String? ?? '',
      patientName: json['patient_name'] as String? ?? '',
      previousVaccine: json['previous_vaccine'] as String? ?? '',
      nextVaccine: json['next_vaccine'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      status: notificationInfoStatusNullableFromJson(json['status']),
      results: json['results'] as String? ?? '',
      errors: json['errors'] as String? ?? '',
      id: json['id'] as String? ?? '',
      rtype: json['rtype'] as String? ?? '',
      cstamp: json['cstamp'] as int,
      ustamp: json['ustamp'] as int,
    );

Map<String, dynamic> _$NotificationInfoToJson(NotificationInfo instance) {
  final val = <String, dynamic>{
    'pid': instance.pid,
    'patient_id': instance.patientId,
    'patient_name': instance.patientName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previous_vaccine', instance.previousVaccine);
  writeNotNull('next_vaccine', instance.nextVaccine);
  writeNotNull('phone', instance.phone);
  writeNotNull('status', notificationInfoStatusNullableToJson(instance.status));
  writeNotNull('results', instance.results);
  writeNotNull('errors', instance.errors);
  val['id'] = instance.id;
  val['rtype'] = instance.rtype;
  val['cstamp'] = instance.cstamp;
  val['ustamp'] = instance.ustamp;
  return val;
}

NotificationArray _$NotificationArrayFromJson(Map<String, dynamic> json) =>
    NotificationArray(
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => NotificationInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NotificationArrayToJson(NotificationArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'notifications', instance.notifications?.map((e) => e.toJson()).toList());
  return val;
}

NotificationArrayRes _$NotificationArrayResFromJson(
        Map<String, dynamic> json) =>
    NotificationArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      page: json['page'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => NotificationInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NotificationArrayResToJson(
    NotificationArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  val['page'] = instance.page;
  val['size'] = instance.size;
  val['total'] = instance.total;
  writeNotNull(
      'notifications', instance.notifications?.map((e) => e.toJson()).toList());
  return val;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      pid: json['pid'] as String? ?? '',
      vaccineName: json['vaccine_name'] as String? ?? '',
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'pid': instance.pid,
      'vaccine_name': instance.vaccineName,
    };

ScheduleRes _$ScheduleResFromJson(Map<String, dynamic> json) => ScheduleRes(
      patient: json['patient'],
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$ScheduleResToJson(ScheduleRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patient', instance.patient);
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

SchedulerRes _$SchedulerResFromJson(Map<String, dynamic> json) => SchedulerRes(
      vaccines: (json['vaccines'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      vaccinesDay: json['vaccines_day'],
      durations: (json['durations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      scheduler: (json['scheduler'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SchedulerResToJson(SchedulerRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaccines', instance.vaccines);
  writeNotNull('vaccines_day', instance.vaccinesDay);
  writeNotNull('durations', instance.durations);
  writeNotNull('scheduler', instance.scheduler);
  return val;
}

EntitiesCountInfo _$EntitiesCountInfoFromJson(Map<String, dynamic> json) =>
    EntitiesCountInfo(
      patients: json['patients'] as int?,
      vaccines: json['vaccines'] as int?,
      medicines: json['medicines'] as int?,
      equipments: json['equipments'] as int?,
    );

Map<String, dynamic> _$EntitiesCountInfoToJson(EntitiesCountInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patients', instance.patients);
  writeNotNull('vaccines', instance.vaccines);
  writeNotNull('medicines', instance.medicines);
  writeNotNull('equipments', instance.equipments);
  return val;
}

EntitiesCountRes _$EntitiesCountResFromJson(Map<String, dynamic> json) =>
    EntitiesCountRes(
      entities: json['entities'] == null
          ? null
          : EntitiesCountInfo.fromJson(
              json['entities'] as Map<String, dynamic>),
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
    );

Map<String, dynamic> _$EntitiesCountResToJson(EntitiesCountRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entities', instance.entities?.toJson());
  val['ok'] = instance.ok;
  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  return val;
}

StatisticsInfo _$StatisticsInfoFromJson(Map<String, dynamic> json) =>
    StatisticsInfo(
      time: json['time'] as String? ?? '',
      male: json['male'] as int?,
      female: json['female'] as int?,
    );

Map<String, dynamic> _$StatisticsInfoToJson(StatisticsInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time', instance.time);
  writeNotNull('male', instance.male);
  writeNotNull('female', instance.female);
  return val;
}

StatisticsArray _$StatisticsArrayFromJson(Map<String, dynamic> json) =>
    StatisticsArray(
      statistics: (json['statistics'] as List<dynamic>?)
              ?.map((e) => StatisticsInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatisticsArrayToJson(StatisticsArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'statistics', instance.statistics?.map((e) => e.toJson()).toList());
  return val;
}

StatisticsArrayRes _$StatisticsArrayResFromJson(Map<String, dynamic> json) =>
    StatisticsArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      statistics: (json['statistics'] as List<dynamic>?)
              ?.map((e) => StatisticsInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatisticsArrayResToJson(StatisticsArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull(
      'statistics', instance.statistics?.map((e) => e.toJson()).toList());
  return val;
}

AppointmentInfo _$AppointmentInfoFromJson(Map<String, dynamic> json) =>
    AppointmentInfo(
      patientName: json['patient_name'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      id: json['id'] as String? ?? '',
      age: json['age'] as int?,
    );

Map<String, dynamic> _$AppointmentInfoToJson(AppointmentInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patient_name', instance.patientName);
  writeNotNull('gender', instance.gender);
  writeNotNull('id', instance.id);
  writeNotNull('age', instance.age);
  return val;
}

AppointmentTotalRes _$AppointmentTotalResFromJson(Map<String, dynamic> json) =>
    AppointmentTotalRes(
      total: json['total'] as int?,
      male: json['male'] as int?,
      female: json['female'] as int?,
    );

Map<String, dynamic> _$AppointmentTotalResToJson(AppointmentTotalRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('male', instance.male);
  writeNotNull('female', instance.female);
  return val;
}

AppointmentArray _$AppointmentArrayFromJson(Map<String, dynamic> json) =>
    AppointmentArray(
      appointments: (json['appointments'] as List<dynamic>?)
              ?.map((e) => AppointmentInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppointmentArrayToJson(AppointmentArray instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'appointments', instance.appointments?.map((e) => e.toJson()).toList());
  return val;
}

AppointmentArrayRes _$AppointmentArrayResFromJson(Map<String, dynamic> json) =>
    AppointmentArrayRes(
      ok: json['ok'] as bool,
      msg: json['msg'] as String? ?? '',
      trace: json['trace'] as String? ?? '',
      total: json['total'] as int?,
      male: json['male'] as int?,
      female: json['female'] as int?,
      appointments: (json['appointments'] as List<dynamic>?)
              ?.map((e) => AppointmentInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppointmentArrayResToJson(AppointmentArrayRes instance) {
  final val = <String, dynamic>{
    'ok': instance.ok,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('msg', instance.msg);
  writeNotNull('trace', instance.trace);
  writeNotNull('total', instance.total);
  writeNotNull('male', instance.male);
  writeNotNull('female', instance.female);
  writeNotNull(
      'appointments', instance.appointments?.map((e) => e.toJson()).toList());
  return val;
}
