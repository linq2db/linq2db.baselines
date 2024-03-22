BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Alert`
(
	`AlertKey`     VARCHAR(4000) NOT NULL,
	`AlertCode`    VARCHAR(4000) NOT NULL,
	`CreationDate` DATETIME      NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AuditAlert`
(
	`AlertKey`        VARCHAR(4000) NOT NULL,
	`AlertCode`       VARCHAR(4000) NOT NULL,
	`CreationDate`    DATETIME      NOT NULL,
	`TransactionDate` DATETIME          NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Trade`
(
	`DealId`       INT           NOT NULL,
	`ParcelId`     INT           NOT NULL,
	`CounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Nomin`
(
	`CargoId`              INT           NOT NULL,
	`DeliveryId`           INT           NOT NULL,
	`DeliveryCounterParty` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
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
				LEFT JOIN `Trade` `trade_1` ON `al_group_1`.`AlertKey` = Cast(`trade_1`.`DealId` as CHAR(255))
				LEFT JOIN `Nomin` `nomin_1` ON `al_group_1`.`AlertKey` = Cast(`nomin_1`.`CargoId` as CHAR(255))
		WHERE
			(LOCATE(@cpty, `nomin_1`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_1`.`CounterParty`) > 0 OR LOCATE(@cpty, `al_group_1`.`AlertCode`) > 0)
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
				(LOCATE(@cpty, `nomin_2`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_2`.`CounterParty`) > 0 OR LOCATE(@cpty, `t1`.`AlertCode`) > 0)
		) `t2` ON `al_group_3`.`AlertKey` = `t2`.`AlertKey` AND `al_group_3`.`AlertCode` = `t2`.`AlertCode` AND `al_group_3`.`CreationDate` = `t2`.`CreationDate` AND `t2`.`rn` <= 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Flat`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Nomin`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Trade`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `AuditAlert`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Alert`

