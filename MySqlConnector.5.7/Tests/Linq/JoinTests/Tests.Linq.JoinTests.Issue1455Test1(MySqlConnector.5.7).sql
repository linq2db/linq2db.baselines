-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cpty VarChar(1) -- String
SET     @cpty = 'C'

SELECT
	`al_group_2`.`Id`,
	(
		SELECT
			`t1`.`LastUpdate`
		FROM
			(
				SELECT
					`al_group_3`.`Id`,
					Coalesce(MAX(`au_1`.`TransactionDate`), `al_group_3`.`CreationDate`) as `LastUpdate`,
					`al_group_3`.`AlertKey`,
					`al_group_3`.`AlertCode`
				FROM
					`Alert` `al_group_3`
						LEFT JOIN `AuditAlert` `au_1` ON `au_1`.`AlertKey` = `al_group_3`.`AlertKey`
				GROUP BY
					`al_group_3`.`Id`,
					`al_group_3`.`AlertKey`,
					`al_group_3`.`AlertCode`,
					`al_group_3`.`CreationDate`
			) `t1`
				LEFT JOIN `Trade` `trade_2` ON `t1`.`AlertKey` = CAST(`trade_2`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_2` ON `t1`.`AlertKey` = CAST(`nomin_2`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_2`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_2`.`CounterParty`) > 0 OR LOCATE(@cpty, `t1`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t1`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`nomin_3`.`CargoId`
		FROM
			(
				SELECT
					`al_group_4`.`Id`,
					`al_group_4`.`AlertKey`,
					`al_group_4`.`AlertCode`
				FROM
					`Alert` `al_group_4`
						LEFT JOIN `AuditAlert` `au_2` ON `au_2`.`AlertKey` = `al_group_4`.`AlertKey`
				GROUP BY
					`al_group_4`.`Id`,
					`al_group_4`.`AlertKey`,
					`al_group_4`.`AlertCode`,
					`al_group_4`.`CreationDate`
			) `t2`
				LEFT JOIN `Trade` `trade_3` ON `t2`.`AlertKey` = CAST(`trade_3`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_3` ON `t2`.`AlertKey` = CAST(`nomin_3`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_3`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_3`.`CounterParty`) > 0 OR LOCATE(@cpty, `t2`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t2`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`nomin_4`.`DeliveryId`
		FROM
			(
				SELECT
					`al_group_5`.`Id`,
					`al_group_5`.`AlertKey`,
					`al_group_5`.`AlertCode`
				FROM
					`Alert` `al_group_5`
						LEFT JOIN `AuditAlert` `au_3` ON `au_3`.`AlertKey` = `al_group_5`.`AlertKey`
				GROUP BY
					`al_group_5`.`Id`,
					`al_group_5`.`AlertKey`,
					`al_group_5`.`AlertCode`,
					`al_group_5`.`CreationDate`
			) `t3`
				LEFT JOIN `Trade` `trade_4` ON `t3`.`AlertKey` = CAST(`trade_4`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_4` ON `t3`.`AlertKey` = CAST(`nomin_4`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_4`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_4`.`CounterParty`) > 0 OR LOCATE(@cpty, `t3`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t3`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`nomin_5`.`DeliveryCounterParty`
		FROM
			(
				SELECT
					`al_group_6`.`Id`,
					`al_group_6`.`AlertKey`,
					`al_group_6`.`AlertCode`
				FROM
					`Alert` `al_group_6`
						LEFT JOIN `AuditAlert` `au_4` ON `au_4`.`AlertKey` = `al_group_6`.`AlertKey`
				GROUP BY
					`al_group_6`.`Id`,
					`al_group_6`.`AlertKey`,
					`al_group_6`.`AlertCode`,
					`al_group_6`.`CreationDate`
			) `t4`
				LEFT JOIN `Trade` `trade_5` ON `t4`.`AlertKey` = CAST(`trade_5`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_5` ON `t4`.`AlertKey` = CAST(`nomin_5`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_5`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_5`.`CounterParty`) > 0 OR LOCATE(@cpty, `t4`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t4`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`trade_6`.`DealId`
		FROM
			(
				SELECT
					`al_group_7`.`Id`,
					`al_group_7`.`AlertKey`,
					`al_group_7`.`AlertCode`
				FROM
					`Alert` `al_group_7`
						LEFT JOIN `AuditAlert` `au_5` ON `au_5`.`AlertKey` = `al_group_7`.`AlertKey`
				GROUP BY
					`al_group_7`.`Id`,
					`al_group_7`.`AlertKey`,
					`al_group_7`.`AlertCode`,
					`al_group_7`.`CreationDate`
			) `t5`
				LEFT JOIN `Trade` `trade_6` ON `t5`.`AlertKey` = CAST(`trade_6`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_6` ON `t5`.`AlertKey` = CAST(`nomin_6`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_6`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_6`.`CounterParty`) > 0 OR LOCATE(@cpty, `t5`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t5`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`trade_7`.`ParcelId`
		FROM
			(
				SELECT
					`al_group_8`.`Id`,
					`al_group_8`.`AlertKey`,
					`al_group_8`.`AlertCode`
				FROM
					`Alert` `al_group_8`
						LEFT JOIN `AuditAlert` `au_6` ON `au_6`.`AlertKey` = `al_group_8`.`AlertKey`
				GROUP BY
					`al_group_8`.`Id`,
					`al_group_8`.`AlertKey`,
					`al_group_8`.`AlertCode`,
					`al_group_8`.`CreationDate`
			) `t6`
				LEFT JOIN `Trade` `trade_7` ON `t6`.`AlertKey` = CAST(`trade_7`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_7` ON `t6`.`AlertKey` = CAST(`nomin_7`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_7`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_7`.`CounterParty`) > 0 OR LOCATE(@cpty, `t6`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t6`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`trade_8`.`CounterParty`
		FROM
			(
				SELECT
					`al_group_9`.`Id`,
					`al_group_9`.`AlertKey`,
					`al_group_9`.`AlertCode`
				FROM
					`Alert` `al_group_9`
						LEFT JOIN `AuditAlert` `au_7` ON `au_7`.`AlertKey` = `al_group_9`.`AlertKey`
				GROUP BY
					`al_group_9`.`Id`,
					`al_group_9`.`AlertKey`,
					`al_group_9`.`AlertCode`,
					`al_group_9`.`CreationDate`
			) `t7`
				LEFT JOIN `Trade` `trade_8` ON `t7`.`AlertKey` = CAST(`trade_8`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_8` ON `t7`.`AlertKey` = CAST(`nomin_8`.`CargoId` AS CHAR(11))
		WHERE
			(LOCATE(@cpty, `nomin_8`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_8`.`CounterParty`) > 0 OR LOCATE(@cpty, `t7`.`AlertCode`) > 0) AND
			`al_group_2`.`Id` = `t7`.`Id`
		LIMIT 1
	)
FROM
	(
		SELECT
			`al_group_1`.`Id`
		FROM
			(
				SELECT
					`al_group`.`Id`,
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`
				FROM
					`Alert` `al_group`
						LEFT JOIN `AuditAlert` `au` ON `au`.`AlertKey` = `al_group`.`AlertKey`
				GROUP BY
					`al_group`.`Id`,
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`
			) `al_group_1`
				LEFT JOIN `Trade` `trade_1` ON `al_group_1`.`AlertKey` = CAST(`trade_1`.`DealId` AS CHAR(11))
				LEFT JOIN `Nomin` `nomin_1` ON `al_group_1`.`AlertKey` = CAST(`nomin_1`.`CargoId` AS CHAR(11))
		WHERE
			LOCATE(@cpty, `nomin_1`.`DeliveryCounterParty`) > 0 OR
			LOCATE(@cpty, `trade_1`.`CounterParty`) > 0 OR LOCATE(@cpty, `al_group_1`.`AlertCode`) > 0
		GROUP BY
			`al_group_1`.`Id`
	) `al_group_2`

