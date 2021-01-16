BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Alert`
(
	`AlertKey`     VARCHAR(255)     NULL,
	`AlertCode`    VARCHAR(255)     NULL,
	`CreationDate` DATETIME         NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `AuditAlert`
(
	`CreationDate`    DATETIME         NULL,
	`AlertCode`       VARCHAR(255)     NULL,
	`AlertKey`        VARCHAR(255)     NULL,
	`TransactionDate` DATETIME         NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Trade`
(
	`DealId`       INT          NOT NULL,
	`ParcelId`     INT          NOT NULL,
	`CounterParty` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Nomin`
(
	`CargoId`              INT          NOT NULL,
	`DeliveryId`           INT          NOT NULL,
	`DeliveryCounterParty` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Flat`
(
	`AlertKey`             VARCHAR(255)     NULL,
	`AlertCode`            VARCHAR(255)     NULL,
	`CargoId`              INT              NULL,
	`DeliveryId`           INT              NULL,
	`DeliveryCounterParty` VARCHAR(255)     NULL,
	`DealId`               INT              NULL,
	`ParcelId`             INT              NULL,
	`CounterParty`         VARCHAR(255)     NULL,
	`TransactionDate`      DATETIME         NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Flat`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Nomin`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Trade`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `AuditAlert`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Alert`

