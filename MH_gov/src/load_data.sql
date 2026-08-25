CREATE TABLE mhgov (
    CIN VARCHAR,
    CompanyName VARCHAR,
    CompanyROCcode VARCHAR,
    CompanyCategory VARCHAR,
    CompanySubCategory VARCHAR,
    CompanyClass VARCHAR,
    AuthorizedCapital VARCHAR,
    PaidupCapital VARCHAR,
    CompanyRegistrationdate_date VARCHAR,
    Registered_Office_Address VARCHAR,
    Listingstatus VARCHAR,
    CompanyStatus VARCHAR,
    CompanyStateCode VARCHAR,
    "CompanyIndian/Foreign Company" VARCHAR,
    nic_code VARCHAR,
    CompanyIndustrialClassification VARCHAR
);


CREATE TABLE dist (
    zipcode VARCHAR,
    district VARCHAR
);


-- Load CSV data
\copy mhgov FROM '/home/xull/Python_MountBlue/SQL_pro/MH_gov/src/data/maharastra_gov.csv' WITH ( FORMAT CSV,HEADER TRUE);

\copy dist(zipcode, district) FROM '/home/xull/Python_MountBlue/SQL_pro/MH_gov/src/data/zipcode_to_district.csv' WITH (FORMAT CSV, HEADER TRUE);

