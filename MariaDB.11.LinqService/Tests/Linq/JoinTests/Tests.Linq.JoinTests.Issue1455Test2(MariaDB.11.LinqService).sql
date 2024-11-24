BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Alert`
(
	`AlertKey`     VARCHAR(4000) NOT NULL,
	`AlertCode`    VARCHAR(4000) NOT NULL,
	`CreationDate` DATETIME      NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AuditAlert`
(
	`AlertKey`        VARCHAR(4000) NOT NULL,
	`AlertCode`       VARCHAR(4000) NOT NULL,
	`CreationDate`    DATETIME      NOT NULL,
	`TransactionDate` DATETIME          NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Trade`
(
	`DealId`       INT           NOT NULL,
	`ParcelId`     INT           NOT NULL,
	`CounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Nomin`
(
	`CargoId`              INT           NOT NULL,
	`DeliveryId`           INT           NOT NULL,
	`DeliveryCounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @DeliveryCounterParty VarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	`al_group_3`.`AlertKey`,
	`al_group_3`.`AlertCode`,
	`t2`.`LastUpdate`,
	`t2`.`CargoId`,
	`t2`.`DeliveryId`,
	`t2`.`DeliveryCounterParty`,
	`t2`.`DealId`,
	`t2`.`ParcelId`,
	`t2`.`CounterParty`
FROM
	(
		SELECT
			`al_group_1`.`AlertKey`,
			`al_group_1`.`AlertCode`,
			`al_group_1`.`CreationDate`
		FROM
			(
				SELECT
					`al_group`.`AlertCode`,
					`al_group`.`AlertKey`,
					`al_group`.`CreationDate`
				FROM
					`Alert` `al_group`
						LEFT JOIN `AuditAlert` `au` ON `au`.`AlertKey` = `al_group`.`AlertKey`
				GROUP BY
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`,
					`al_group`.`CreationDate`
			) `al_group_1`
				LEFT JOIN `Trade` `trade_1` ON `al_group_1`.`AlertKey` = CAST(`trade_1`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_1` ON `al_group_1`.`AlertKey` = CAST(`nomin_1`.`CargoId` AS CHAR(11))
		WHERE
			`nomin_1`.`DeliveryCounterParty` LIKE @DeliveryCounterParty OR
			`trade_1`.`CounterParty` LIKE @DeliveryCounterParty OR
			`al_group_1`.`AlertCode` LIKE @DeliveryCounterParty
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
				Coalesce(`t1`.`MAX_1`, `t1`.`CreationDate`) as `LastUpdate`,
				ROW_NUMBER() OVER (PARTITION BY `t1`.`AlertKey`, `t1`.`AlertCode`, `t1`.`CreationDate` ORDER BY `t1`.`AlertKey`) as `rn`,
				`t1`.`AlertKey`,
				`t1`.`AlertCode`,
				`t1`.`CreationDate`
			FROM
				(
					SELECT
						`al_group_2`.`AlertCode`,
						`al_group_2`.`AlertKey`,
						`al_group_2`.`CreationDate`,
						MAX(`au_1`.`TransactionDate`) as `MAX_1`
					FROM
						`Alert` `al_group_2`
							LEFT JOIN `AuditAlert` `au_1` ON `au_1`.`AlertKey` = `al_group_2`.`AlertKey`
					GROUP BY
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
						`al_group_2`.`CreationDate`
				) `t1`
					LEFT JOIN `Trade` `trade_2` ON `t1`.`AlertKey` = CAST(`trade_2`.`DealId` AS CHAR(11))
					LEFT JOIN `Nomin` `nomin_2` ON `t1`.`AlertKey` = CAST(`nomin_2`.`CargoId` AS CHAR(11))
			WHERE
				`nomin_2`.`DeliveryCounterParty` LIKE @DeliveryCounterParty OR
				`trade_2`.`CounterParty` LIKE @DeliveryCounterParty OR
				`t1`.`AlertCode` LIKE @DeliveryCounterParty
		) `t2` ON `al_group_3`.`AlertKey` = `t2`.`AlertKey` AND `al_group_3`.`AlertCode` = `t2`.`AlertCode` AND `al_group_3`.`CreationDate` = `t2`.`CreationDate` AND `t2`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

