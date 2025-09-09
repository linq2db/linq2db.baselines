BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @cpty VarChar(1) -- String
SET     @cpty = 'C'

SELECT
	`al_group_3`.`AlertKey`,
	`al_group_3`.`AlertCode`,
	`t2`.`LastUpdate`,
	`t2`.`cond`,
	`t2`.`DeliveryId`,
	`t2`.`DeliveryCounterParty`,
	`t2`.`cond_1`,
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
					`al_group`.`AlertKey`,
					`al_group`.`AlertCode`,
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
			LOCATE(@cpty, `nomin_1`.`DeliveryCounterParty`) > 0 OR
			LOCATE(@cpty, `trade_1`.`CounterParty`) > 0 OR LOCATE(@cpty, `al_group_1`.`AlertCode`) > 0
		GROUP BY
			`al_group_1`.`AlertKey`,
			`al_group_1`.`AlertCode`,
			`al_group_1`.`CreationDate`
	) `al_group_3`
		LEFT JOIN (
			SELECT
				`nomin_2`.`CargoId` as `cond`,
				`nomin_2`.`DeliveryId`,
				`nomin_2`.`DeliveryCounterParty`,
				`trade_2`.`DealId` as `cond_1`,
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
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
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
				LOCATE(@cpty, `nomin_2`.`DeliveryCounterParty`) > 0 OR
				LOCATE(@cpty, `trade_2`.`CounterParty`) > 0 OR LOCATE(@cpty, `t1`.`AlertCode`) > 0
		) `t2` ON `al_group_3`.`AlertKey` = `t2`.`AlertKey` AND `al_group_3`.`AlertCode` = `t2`.`AlertCode` AND `al_group_3`.`CreationDate` = `t2`.`CreationDate` AND `t2`.`rn` <= 1

