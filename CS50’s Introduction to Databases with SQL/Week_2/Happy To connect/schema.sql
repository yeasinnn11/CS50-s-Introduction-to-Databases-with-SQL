CREATE TABLE Users(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT UNIQUE,
    "password" TEXT,
    PRIMARY KEY ("id")
 );
CREATE TABLE Schools(
    "id" INTEGER,
    "name" TEXT,
    "school_type" TEXT,
    "location" TEXT,
    "founding_year" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE Companies(
    "id" INTEGER,
    "name" TEXT,
    "indusrty" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE UserConnections(
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY ("user1_id","user2_id"),
    FOREIGN KEY ("user1_id") REFERENCES Users("id"),
    FOREIGN KEY ("user2_id") REFERENCES Users("id")
);
CREATE TABLE UserSchools(
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" DATE,
    "end_date" DATE,
    "degree" TEXT,
    PRIMARY KEY ("user_id","school_id"),
    FOREIGN KEY ("user_id") REFERENCES Users("id"),
    FOREIGN KEY ("school_id") REFERENCES Schools("id")
);
CREATE TABLE UserCompanies(
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" DATE,
    "end_date" DATE,
    "title" TEXT,
    PRIMARY KEY ("user_id","company_id"),
    FOREIGN KEY ("user_id") REFERENCES Users("id"),
    FOREIGN KEY ("company_id") REFERENCES Companies("id")
);
