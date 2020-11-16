BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Alert`
(
	`AlertKey`     VARCHAR(255)     NULL,
	`AlertCode`    VARCHAR(255)     NULL,
	`CreationDate` DATETIME         NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `AuditAlert`
(
	`CreationDate`    DATETIME         NULL,
	`AlertCode`       VARCHAR(255)     NULL,
	`AlertKey`        VARCHAR(255)     NULL,
	`TransactionDate` DATETIME         NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Trade`
(
	`DealId`       INT          NOT NULL,
	`ParcelId`     INT          NOT NULL,
	`CounterParty` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Nomin`
(
	`CargoId`              INT          NOT NULL,
	`DeliveryId`           INT          NOT NULL,
	`DeliveryCounterParty` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
DECLARE @p1 VarChar(3) -- String
SET     @p1 = '%C%'
DECLARE @p2 VarChar(3) -- String
SET     @p2 = '%C%'
DECLARE @p3 VarChar(3) -- String
SET     @p3 = '%C%'

SELECT
	`al_1`.`alert`,
	`al_1`.`alert_1`,
	`al_1`.`alert_2`
FROM
	(
		SELECT
			`al`.`AlertKey` as `alert`,
			`al`.`AlertCode` as `alert_1`,
			`al`.`CreationDate` as `alert_2`
		FROM
			`Alert` `al`
				LEFT JOIN `AuditAlert` `au1` ON (`au1`.`AlertKey` = `al`.`AlertKey` OR `au1`.`AlertKey` IS NULL AND `al`.`AlertKey` IS NULL) AND (`au1`.`AlertCode` = `au1`.`AlertCode` OR `au1`.`AlertCode` IS NULL AND `au1`.`AlertCode` IS NULL)
		GROUP BY
			`al`.`AlertKey`,
			`al`.`AlertCode`,
			`al`.`CreationDate`
	) `al_1`
		LEFT JOIN `Trade` `trade1` ON `al_1`.`alert` = Cast(`trade1`.`DealId` as CHAR(11))
		LEFT JOIN `Nomin` `nomin1` ON `al_1`.`alert` = Cast(`nomin1`.`CargoId` as CHAR(11))
WHERE
	((`nomin1`.`DeliveryCounterParty` LIKE @p1 OR `trade1`.`CounterParty` LIKE @p2) OR `al_1`.`alert_1` LIKE @p3)
GROUP BY
	`al_1`.`alert`,
	`al_1`.`alert_1`,
	`al_1`.`alert_2`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Flat`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Nomin`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Trade`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `AuditAlert`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Alert`

