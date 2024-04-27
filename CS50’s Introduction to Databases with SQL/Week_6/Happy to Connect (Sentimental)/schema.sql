CREATE TABLE `Companies`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL,
    `industry` TEXT NOT NULL,
    `location` TEXT NOT NULL
);
CREATE TABLE `Users`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` TEXT NOT NULL,
    `last_name` TEXT NOT NULL,
    `username` TEXT NOT NULL,
    `password` TEXT NOT NULL
);
CREATE TABLE `Schools`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL,
    `school_type` TEXT NOT NULL,
    `location` TEXT NOT NULL,
    `founding_year` INT NOT NULL
);
CREATE TABLE `UserConnections`(
    `user1_id` INT NOT NULL,
    `user2_id` INT NOT NULL,
    PRIMARY KEY(`user1_id`)
);
ALTER TABLE
    `UserConnections` ADD PRIMARY KEY(`user2_id`);
CREATE TABLE `UserSchools`(
    `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `schools_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `degree` TEXT NOT NULL,
    PRIMARY KEY(`schools_id`)
);
CREATE TABLE `UserCompanies`(
    `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `company_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `title` TEXT NOT NULL,
    PRIMARY KEY(`company_id`)
);
ALTER TABLE
    `UserSchools` ADD CONSTRAINT `userschools_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`);
ALTER TABLE
    `UserCompanies` ADD CONSTRAINT `usercompanies_company_id_foreign` FOREIGN KEY(`company_id`) REFERENCES `Companies`(`id`);
ALTER TABLE
    `UserSchools` ADD CONSTRAINT `userschools_schools_id_foreign` FOREIGN KEY(`schools_id`) REFERENCES `Schools`(`id`);
ALTER TABLE
    `UserCompanies` ADD CONSTRAINT `usercompanies_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`);
ALTER TABLE
    `UserConnections` ADD CONSTRAINT `userconnections_user1_id_foreign` FOREIGN KEY(`user1_id`) REFERENCES `Users`(`id`);
ALTER TABLE
    `UserConnections` ADD CONSTRAINT `userconnections_user2_id_foreign` FOREIGN KEY(`user2_id`) REFERENCES `Users`(`id`);
