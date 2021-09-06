CREATE TABLE `admin` (
	`id` INT(10) NOT NULL,
	`userName` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`status` INT(1)
);

CREATE TABLE `patients` (
	`id` INT(10) NOT NULL,
	`name` varchar(50) NOT NULL,
	`emailId` varchar(100),
	`mobile` varchar(13),
	`password` varchar(20) NOT NULL,
	`address` varchar(255),
	`status` INT(1) DEFAULT '1'
);

CREATE TABLE `appointments` (
	`id` INT NOT NULL,
	`patientId` INT NOT NULL,
	`date` DATE NOT NULL,
	`time` TIME NOT NULL,
	`reason` varchar(255) NOT NULL,
	`status` INT(2) DEFAULT '1'
);

ALTER TABLE `appointments` ADD CONSTRAINT `appointments_fk0` FOREIGN KEY (`patientId`) REFERENCES `patients`(`id`);




