-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Value`
FROM
	`CoarseConvertedRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Datetime -- DateTime
SET     @value = '2026-06-01 09:00:00'

SELECT
	COUNT(*)
FROM
	`CoarseConvertedRow` `r`
WHERE
	`r`.`Value` = @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

