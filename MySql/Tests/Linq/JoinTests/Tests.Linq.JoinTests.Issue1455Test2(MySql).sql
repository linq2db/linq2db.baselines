BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Alert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Alert`
(
	`AlertKey`     VARCHAR(4000) NOT NULL,
	`AlertCode`    VARCHAR(4000) NOT NULL,
	`CreationDate` DATETIME      NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `AuditAlert`
(
	`AlertKey`        VARCHAR(4000) NOT NULL,
	`AlertCode`       VARCHAR(4000) NOT NULL,
	`CreationDate`    DATETIME      NOT NULL,
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
	`al_group_3`.`AlertKey`,
	`al_group_3`.`AlertCode`,
	`t2`.`LastUpdate_1`,
	`t2`.`CargoId`,
	`t2`.`DeliveryId`,
	`t2`.`DeliveryCounterParty`,
	`t2`.`DealId`,
	`t2`.`ParcelId`,
	`t2`.`CounterParty`,
	`t2`.`LastUpdate`
FROM
	(
		SELECT
			`al_group_1`.`AlertKey`,
			`al_group_1`.`AlertCode`,
			`al_group_1`.`CreationDate`
		FROM
			(
				SELECT
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`,
					`al_group`.`CreationDate`
				FROM
					`Alert` `al_group`
						LEFT JOIN `AuditAlert` `au` ON `au`.`AlertKey` = `al_group`.`AlertKey` AND `au`.`AlertCode` = `au`.`AlertCode`
				GROUP BY
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`,
					`al_group`.`CreationDate`
			) `al_group_1`
				LEFT JOIN `Trade` `trade_1` ON `al_group_1`.`AlertKey` = Cast(`trade_1`.`DealId` as CHAR(255))
				LEFT JOIN `Nomin` `nomin_1` ON `al_group_1`.`AlertKey` = Cast(`nomin_1`.`CargoId` as CHAR(255))
		WHERE
			(`nomin_1`.`DeliveryCounterParty` LIKE @DeliveryCounterParty OR `trade_1`.`CounterParty` LIKE @DeliveryCounterParty OR `al_group_1`.`AlertCode` LIKE @DeliveryCounterParty)
		GROUP BY
			`al_group_1`.`AlertKey`,
			`al_group_1`.`AlertCode`,
			`al_group_1`.`CreationDate`
	) `al_group_3`
		LEFT JOIN (
			SELECT
				`nomin_2`.`CargoId`,
				`nomin_2`.`DeliveryId`,
				`nomin_2`.`DeliveryCounterParty`,
				`trade_2`.`DealId`,
				`trade_2`.`ParcelId`,
				`trade_2`.`CounterParty`,
				`t1`.`LastUpdate`,
				`t1`.`LastUpdate_1`,
				ROW_NUMBER() OVER (PARTITION BY `t1`.`AlertKey`, `t1`.`AlertCode`, `t1`.`CreationDate` ORDER BY `t1`.`AlertKey`) as `rn`,
				`t1`.`AlertKey`,
				`t1`.`AlertCode`,
				`t1`.`CreationDate`
			FROM
				(
					SELECT
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
						`al_group_2`.`CreationDate`,
						Coalesce((
							SELECT
								MAX(`au_2`.`TransactionDate`)
							FROM
								`Alert` `al`
									LEFT JOIN `AuditAlert` `au_2` ON `au_2`.`AlertKey` = `al`.`AlertKey` AND `au_2`.`AlertCode` = `au_2`.`AlertCode`
							WHERE
								`al_group_2`.`AlertKey` = `al`.`AlertKey` AND `al_group_2`.`AlertCode` = `al`.`AlertCode` AND
								`al_group_2`.`CreationDate` = `al`.`CreationDate`
						), `al_group_2`.`CreationDate`) as `LastUpdate`,
						Coalesce((
							SELECT
								MAX(`au_2`.`TransactionDate`)
							FROM
								`Alert` `al`
									LEFT JOIN `AuditAlert` `au_2` ON `au_2`.`AlertKey` = `al`.`AlertKey` AND `au_2`.`AlertCode` = `au_2`.`AlertCode`
							WHERE
								`al_group_2`.`AlertKey` = `al`.`AlertKey` AND `al_group_2`.`AlertCode` = `al`.`AlertCode` AND
								`al_group_2`.`CreationDate` = `al`.`CreationDate`
						), `al_group_2`.`CreationDate`) as `LastUpdate_1`
					FROM
						`Alert` `al_group_2`
							LEFT JOIN `AuditAlert` `au_1` ON `au_1`.`AlertKey` = `al_group_2`.`AlertKey` AND `au_1`.`AlertCode` = `au_1`.`AlertCode`
					GROUP BY
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
						`al_group_2`.`CreationDate`
				) `t1`
					LEFT JOIN `Trade` `trade_2` ON `t1`.`AlertKey` = Cast(`trade_2`.`DealId` as CHAR(255))
					LEFT JOIN `Nomin` `nomin_2` ON `t1`.`AlertKey` = Cast(`nomin_2`.`CargoId` as CHAR(255))
			WHERE
				(`nomin_2`.`DeliveryCounterParty` LIKE @DeliveryCounterParty OR `trade_2`.`CounterParty` LIKE @DeliveryCounterParty OR `t1`.`AlertCode` LIKE @DeliveryCounterParty)
		) `t2` ON `al_group_3`.`AlertKey` = `t2`.`AlertKey` AND `al_group_3`.`AlertCode` = `t2`.`AlertCode` AND `al_group_3`.`CreationDate` = `t2`.`CreationDate` AND `t2`.`rn` <= 1

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

