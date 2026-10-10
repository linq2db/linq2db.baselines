-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`a`.`Id`
FROM
	`Activity` `a`
ORDER BY
	`a`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`e`.`Id`,
	MAX(CASE
		WHEN `e`.`TheKey` = 10 THEN `rub`.`IdeRub`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `e`.`TheKey` = 20 THEN `rub`.`IdeRub`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `e`.`TheKey` = 30 THEN `rub`.`IdeRub`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `e`.`TheKey` = 10 THEN `rub`.`LibRub`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `e`.`TheKey` = 20 THEN `rub`.`LibRub`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `e`.`TheKey` = 30 THEN `rub`.`LibRub`
		ELSE NULL
	END)
FROM
	`ModTemplate` `e`
		INNER JOIN `Activity` `act` ON `e`.`TheKey` = `act`.`Id`
		INNER JOIN `CoaMask` `cm` ON `e`.`Id` = `cm`.`Id`
		LEFT JOIN `AtiRub` `pos` ON `pos`.`Id` = `e`.`PosRubId`
		LEFT JOIN `IasRub` `rub` ON `rub`.`Id` = `e`.`RubId`
GROUP BY
	`e`.`Id`

