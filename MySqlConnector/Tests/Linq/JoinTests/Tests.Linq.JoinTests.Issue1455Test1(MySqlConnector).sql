BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Alert`
(
	`AlertKey`     VARCHAR(4000) NOT NULL,
	`AlertCode`    VARCHAR(4000) NOT NULL,
	`CreationDate` DATETIME      NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AuditAlert`
(
	`AlertKey`        VARCHAR(4000) NOT NULL,
	`AlertCode`       VARCHAR(4000) NOT NULL,
	`CreationDate`    DATETIME      NOT NULL,
	`TransactionDate` DATETIME          NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Trade`
(
	`DealId`       INT           NOT NULL,
	`ParcelId`     INT           NOT NULL,
	`CounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Nomin`
(
	`CargoId`              INT           NOT NULL,
	`DeliveryId`           INT           NOT NULL,
	`DeliveryCounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @cpty VarChar(1) -- String
SET     @cpty = 'C'

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
				LEFT JOIN (
					SELECT
						`trade_1`.`CounterParty`,
						CAST(`trade_1`.`DealId` AS CHAR(11)) as `c1`
					FROM
						`Trade` `trade_1`
				) `trade_2` ON `al_group_1`.`AlertKey` = `trade_2`.`c1`
				LEFT JOIN (
					SELECT
						`nomin_1`.`DeliveryCounterParty`,
						CAST(`nomin_1`.`CargoId` AS CHAR(11)) as `c1`
					FROM
						`Nomin` `nomin_1`
				) `nomin_2` ON `al_group_1`.`AlertKey` = `nomin_2`.`c1`
		WHERE
			(LOCATE(@cpty, `nomin_2`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_2`.`CounterParty`) > 0 OR LOCATE(@cpty, `al_group_1`.`AlertCode`) > 0)
		GROUP BY
			`al_group_1`.`AlertKey`,
			`al_group_1`.`AlertCode`,
			`al_group_1`.`CreationDate`
	) `al_group_3`
		LEFT JOIN (
			SELECT
				`nomin_4`.`CargoId`,
				`nomin_4`.`DeliveryId`,
				`nomin_4`.`DeliveryCounterParty`,
				`trade_4`.`DealId`,
				`trade_4`.`ParcelId`,
				`trade_4`.`CounterParty`,
				Coalesce(`t1`.`MAX_1`, `t1`.`CreationDate`) as `LastUpdate`,
				Coalesce(`t1`.`MAX_1`, `t1`.`CreationDate`) as `LastUpdate_1`,
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
						MAX(`au_1`.`TransactionDate`) as `MAX_1`
					FROM
						`Alert` `al_group_2`
							LEFT JOIN `AuditAlert` `au_1` ON `au_1`.`AlertKey` = `al_group_2`.`AlertKey` AND `au_1`.`AlertCode` = `au_1`.`AlertCode`
					GROUP BY
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
						`al_group_2`.`CreationDate`
				) `t1`
					LEFT JOIN (
						SELECT
							`trade_3`.`CounterParty`,
							`trade_3`.`DealId`,
							`trade_3`.`ParcelId`,
							CAST(`trade_3`.`DealId` AS CHAR(11)) as `c1`
						FROM
							`Trade` `trade_3`
					) `trade_4` ON `t1`.`AlertKey` = `trade_4`.`c1`
					LEFT JOIN (
						SELECT
							`nomin_3`.`DeliveryCounterParty`,
							`nomin_3`.`CargoId`,
							`nomin_3`.`DeliveryId`,
							CAST(`nomin_3`.`CargoId` AS CHAR(11)) as `c1`
						FROM
							`Nomin` `nomin_3`
					) `nomin_4` ON `t1`.`AlertKey` = `nomin_4`.`c1`
			WHERE
				(LOCATE(@cpty, `nomin_4`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_4`.`CounterParty`) > 0 OR LOCATE(@cpty, `t1`.`AlertCode`) > 0)
		) `t2` ON `al_group_3`.`AlertKey` = `t2`.`AlertKey` AND `al_group_3`.`AlertCode` = `t2`.`AlertCode` AND `al_group_3`.`CreationDate` = `t2`.`CreationDate` AND `t2`.`rn` <= 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

