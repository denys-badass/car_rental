use car_rentals;

db.createCollection("cars", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "cars",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "car_type": {
                    "bsonType": "string",
                    "enum": [
                        "Econom",
                        "Standart",
                        "Bussines",
                        "Premium"
                    ]
                },
                "daily_price": {
                    "bsonType": "int"
                },
                "registration_number": {
                    "bsonType": "string"
                },
                "vin_code": {
                    "bsonType": "string"
                },
                "manufacturer": {
                    "bsonType": "string"
                },
                "model": {
                    "bsonType": "string"
                },
                "year": {
                    "bsonType": "int"
                },
                "color": {
                    "bsonType": "string"
                },
                "number_of_seats": {
                    "bsonType": "int"
                },
                "fuel_type": {
                    "bsonType": "string",
                    "enum": [
                        "Diesel",
                        "Gasoline",
                        "Hybrid",
                        "Electro"
                    ]
                },
                "transmission": {
                    "bsonType": "string"
                },
                "last_inspected_odometer": {
                    "bsonType": "int"
                },
                "availability_status": {
                    "bsonType": "bool"
                },
                "branch": {
                    "bsonType": "objectId"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "car_type",
                "daily_price",
                "registration_number",
                "vin_code",
                "manufacturer",
                "model",
                "year",
                "color",
                "fuel_type",
                "transmission",
                "availability_status",
                "branch"
            ]
        }
    },
});




db.createCollection("branches", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "branches",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "postal_code": {
                    "bsonType": "string"
                },
                "phone_number": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "address",
                "city",
                "region",
                "postal_code",
                "phone_number"
            ]
        }
    },
});




db.createCollection("customers", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "customers",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "first_name": {
                    "bsonType": "string"
                },
                "last_name": {
                    "bsonType": "string"
                },
                "date_of_birth": {
                    "bsonType": "date"
                },
                "phone_number": {
                    "bsonType": "string"
                },
                "email": {
                    "bsonType": "string"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "passport": {
                    "bsonType": "string"
                },
                "driver_license": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "first_name",
                "last_name",
                "date_of_birth",
                "phone_number",
                "address",
                "city",
                "passport",
                "driver_license"
            ]
        }
    },
});




db.createCollection("employees", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "employees",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "first_name": {
                    "bsonType": "string"
                },
                "last_name": {
                    "bsonType": "string"
                },
                "birth_date": {
                    "bsonType": "string"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "email": {
                    "bsonType": "string"
                },
                "salary": {
                    "bsonType": "int"
                },
                "reports_to": {
                    "bsonType": "objectId"
                },
                "New Field": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "first_name",
                "last_name",
                "birth_date",
                "address",
                "city",
                "salary"
            ]
        }
    },
});




db.createCollection("rentals", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "rentals",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "car_id": {
                    "bsonType": "objectId"
                },
                "customer_id": {
                    "bsonType": "objectId"
                },
                "start_date": {
                    "bsonType": "date"
                },
                "end_date": {
                    "bsonType": "date"
                },
                "start_odometer": {
                    "bsonType": "int"
                },
                "end_odometer": {
                    "bsonType": "string"
                },
                "start_branch": {
                    "bsonType": "objectId"
                },
                "end_branch": {
                    "bsonType": "objectId"
                }
            },
            "additionalProperties": false,
            "dependencies": {
                "end_branch": [
                    "start_branch"
                ],
                "end_date": [
                    "start_date"
                ],
                "end_odometer": [
                    "start_odometer"
                ]
            },
            "required": [
                "_id",
                "car_id",
                "start_date",
                "end_date",
                "start_odometer",
                "start_branch"
            ]
        }
    },
});




db.createCollection("payments", {
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "payments",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "agreement": {
                    "bsonType": "object",
                    "properties": {
                        "employee_id": {
                            "bsonType": "objectId"
                        },
                        "rental_id": {
                            "bsonType": "objectId"
                        }
                    },
                    "additionalProperties": false,
                    "required": [
                        "employee_id",
                        "rental_id"
                    ]
                },
                "payment_date": {
                    "bsonType": "date"
                },
                "total_amount": {
                    "bsonType": "int"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "agreement",
                "payment_date",
                "total_amount"
            ]
        }
    },
});