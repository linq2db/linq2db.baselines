-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Value`
FROM
	`CoarseConvertedRow` `r`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Datetime -- DateTime
SET     @value = '2026-06-01 09:00:00'

SELECT
	COUNT(*)
FROM
	`CoarseConvertedRow` `r`
WHERE
	`r`.`Value` = @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Datetime -- DateTime
SET     @value = '2026-06-01 09:00:00'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseConvertedRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Value`) = @value
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @CoarseValue Datetime -- DateTime
SET     @CoarseValue = '2026-06-01 09:00:00'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseConvertedRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Value`) = @CoarseValue
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @day Datetime -- DateTime
SET     @day = '2026-05-31'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseConvertedRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MIN(`g_1`.`Day`) = @day
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @CoarseConvertedDay Datetime -- DateTime
SET     @CoarseConvertedDay = '2026-05-31'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseConvertedRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MIN(`g_1`.`Day`) = @CoarseConvertedDay
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(`g_1`.`Value`) as `Max_1`
		FROM
			`CoarseConvertedRow` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `t1`
WHERE
	`t1`.`Max_1` IN ('2026-06-01 09:00:00')

