BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @cpty VarChar(1) -- String
SET     @cpty = 'C'

SELECT
	`al_group_3`.`Id`,
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
	) `al_group_3`
		LEFT JOIN LATERAL (
			SELECT
				`nomin_2`.`CargoId` as `cond`,
				`nomin_2`.`DeliveryId`,
				`nomin_2`.`DeliveryCounterParty`,
				`trade_2`.`DealId` as `cond_1`,
				`trade_2`.`ParcelId`,
				`trade_2`.`CounterParty`,
				Coalesce(`t1`.`MAX_1`, `t1`.`CreationDate`) as `LastUpdate`
			FROM
				(
					SELECT
						`al_group_2`.`Id`,
						MAX(`au_1`.`TransactionDate`) as `MAX_1`,
						`al_group_2`.`CreationDate`,
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`
					FROM
						`Alert` `al_group_2`
							LEFT JOIN `AuditAlert` `au_1` ON `au_1`.`AlertKey` = `al_group_2`.`AlertKey`
					GROUP BY
						`al_group_2`.`Id`,
						`al_group_2`.`AlertKey`,
						`al_group_2`.`AlertCode`,
						`al_group_2`.`CreationDate`
				) `t1`
					LEFT JOIN `Trade` `trade_2` ON `t1`.`AlertKey` = CAST(`trade_2`.`DealId` AS CHAR(11))
					LEFT JOIN `Nomin` `nomin_2` ON `t1`.`AlertKey` = CAST(`nomin_2`.`CargoId` AS CHAR(11))
			WHERE
				(LOCATE(@cpty, `nomin_2`.`DeliveryCounterParty`) > 0 OR LOCATE(@cpty, `trade_2`.`CounterParty`) > 0 OR LOCATE(@cpty, `t1`.`AlertCode`) > 0) AND
				`al_group_3`.`Id` = `t1`.`Id`
			LIMIT 1
		) `t2` ON 1=1

