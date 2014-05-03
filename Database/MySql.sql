DROP SCHEMA IF EXISTS `UrlAnalytics`;

CREATE SCHEMA  `UrlAnalytics`;

USE `UrlAnalytics`;

CREATE TABLE `Link`
(
	`Id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
	`Code` varchar(36) NOT NULL,
	`Url` varchar(1000) NOT NULL,
	`UserId` varchar(36) NULL,
	`UtcCreatedOn` datetime NOT NULL,
	`CreatedOn` datetime NOT NULL,
	CONSTRAINT PK_Link PRIMARY KEY (`Id`),
	CONSTRAINT UQ_Link UNIQUE KEY (`Code`)
);

CREATE TABLE `LinkClickHistory`
(
	`Id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
	`LinkId` bigint UNSIGNED NOT NULL,
	`IpAddress` bigint UNSIGNED NULL,
	`Browser` varchar(100) NULL,
	`Source` varchar(100) NULL,
	`Platform` varchar(100) NULL,
	`UtcCreatedOn` datetime NOT NULL,
	`CreatedOn` datetime NOT NULL,
	`CreatedOnDayOfYear` smallint NOT NULL,
	`CreatedOnYear` smallint NOT NULL,
	CONSTRAINT PK_LinkClickHistory PRIMARY KEY (`Id`)
	/* No foreign key created to LinkId to improve speed  */
);

CREATE INDEX IX_LinkClickHistory ON LinkClickHistory (LinkId, CreatedOnYear, CreatedOnDayOfYear) USING BTREE;