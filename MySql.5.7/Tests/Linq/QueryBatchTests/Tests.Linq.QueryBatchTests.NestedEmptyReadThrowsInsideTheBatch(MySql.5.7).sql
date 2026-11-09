-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(
		SELECT
			`i`.`Id`
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`GroupId` = `g_1`.`Id` AND `i`.`Id` > 8
		LIMIT 1
	)
FROM
	`BatchGroup` `g_1`
ORDER BY
	`g_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(
		SELECT
			`i`.`Id`
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`GroupId` = `g_1`.`Id` AND `i`.`Id` > 8
		LIMIT 1
	)
FROM
	`BatchGroup` `g_1`
ORDER BY
	`g_1`.`Id`

