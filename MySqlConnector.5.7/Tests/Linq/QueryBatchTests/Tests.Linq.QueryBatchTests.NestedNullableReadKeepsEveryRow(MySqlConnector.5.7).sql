-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
-- Command 1
SELECT
	`g_1`.`Id`,
	(
		SELECT
			1
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`GroupId` = `g_1`.`Id`
		ORDER BY
			`i`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`i_1`.`Value`
		FROM
			`BatchItem` `i_1`
		WHERE
			`i_1`.`GroupId` = `g_1`.`Id`
		ORDER BY
			`i_1`.`Id`
		LIMIT 1
	)
FROM
	`BatchGroup` `g_1`
ORDER BY
	`g_1`.`Id`

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`BatchItem` `t1`
	) as `Item2`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
-- Command 1
SELECT
	`g_1`.`Id`,
	(
		SELECT
			1
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`GroupId` = `g_1`.`Id` AND `i`.`Id` > 8
		ORDER BY
			`i`.`Id`
		LIMIT 1
	),
	(
		SELECT
			`i_1`.`Value`
		FROM
			`BatchItem` `i_1`
		WHERE
			`i_1`.`GroupId` = `g_1`.`Id` AND `i_1`.`Id` > 8
		ORDER BY
			`i_1`.`Id`
		LIMIT 1
	)
FROM
	`BatchGroup` `g_1`
ORDER BY
	`g_1`.`Id`

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`BatchItem` `t1`
	) as `Item2`
