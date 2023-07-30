BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Alert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Alert`
(
	`AlertKey`     VARCHAR(4000)     NULL,
	`AlertCode`    VARCHAR(4000)     NULL,
	`CreationDate` DATETIME          NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `AuditAlert`
(
	`AlertKey`        VARCHAR(4000)     NULL,
	`AlertCode`       VARCHAR(4000)     NULL,
	`CreationDate`    DATETIME          NULL,
	`TransactionDate` DATETIME          NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Trade`
(
	`DealId`       INT           NOT NULL,
	`ParcelId`     INT           NOT NULL,
	`CounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Nomin`
(
	`CargoId`              INT           NOT NULL,
	`DeliveryId`           INT           NOT NULL,
	`DeliveryCounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Flat`
(
	`AlertKey`             VARCHAR(4000)     NULL,
	`AlertCode`            VARCHAR(4000)     NULL,
	`CargoId`              INT               NULL,
	`DeliveryId`           INT               NULL,
	`DeliveryCounterParty` VARCHAR(4000)     NULL,
	`DealId`               INT               NULL,
	`ParcelId`             INT               NULL,
	`CounterParty`         VARCHAR(4000)     NULL,
	`TransactionDate`      DATETIME          NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @DeliveryCounterParty VarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

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
	((`nomin1`.`DeliveryCounterParty` LIKE @DeliveryCounterParty OR `trade1`.`CounterParty` LIKE @DeliveryCounterParty) OR `al_1`.`alert_1` LIKE @DeliveryCounterParty)
GROUP BY
	`al_1`.`alert`,
	`al_1`.`alert_1`,
	`al_1`.`alert_2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Alert`

