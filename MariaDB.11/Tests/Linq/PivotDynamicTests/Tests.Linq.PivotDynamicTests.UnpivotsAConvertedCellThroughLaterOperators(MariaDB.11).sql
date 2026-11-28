-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT DISTINCT
	CAST(Floor(`x`.`Amount`) AS SIGNED)
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010 AND `x`.`Category` = 'A'
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @castOfA Int32
SET     @castOfA = 20

SELECT
	`x`.`Category`
FROM
	`CategorySales` `x`
WHERE
	`x`.`Year` = 2010 AND CAST(Floor(`x`.`Amount`) AS SIGNED) = @castOfA

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @castOfA Int32
SET     @castOfA = 20

SELECT
	`u_1`.`Key_1`
FROM
	(
		SELECT
			CAST(Floor(SUM(CASE
				WHEN `u`.`Year` = 2010 THEN `u`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`,
			`u`.`Category` as `Key_1`
		FROM
			`CategorySales` `u`
		GROUP BY
			`u`.`Category`
		UNION ALL
		SELECT
			CAST(Floor(SUM(CASE
				WHEN `g_1`.`Year` = 2020 THEN `g_1`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`,
			`g_1`.`Category` as `Key_1`
		FROM
			`CategorySales` `g_1`
		GROUP BY
			`g_1`.`Category`
	) `u_1`
WHERE
	`u_1`.`Value_1` = @castOfA

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`u_1`.`Value_1`
FROM
	(
		SELECT
			CAST('Y2010' AS CHAR(255)) as `Name`,
			`u`.`Category` as `Key_1`,
			CAST(Floor(SUM(CASE
				WHEN `u`.`Year` = 2010 THEN `u`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`
		FROM
			`CategorySales` `u`
		GROUP BY
			`u`.`Category`
		UNION ALL
		SELECT
			CAST('Y2020' AS CHAR(255)) as `Name`,
			`g_1`.`Category` as `Key_1`,
			CAST(Floor(SUM(CASE
				WHEN `g_1`.`Year` = 2020 THEN `g_1`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`
		FROM
			`CategorySales` `g_1`
		GROUP BY
			`g_1`.`Category`
	) `u_1`
WHERE
	`u_1`.`Name` = 'Y2010'
ORDER BY
	`u_1`.`Key_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`u_1`.`Value_1`
FROM
	(
		SELECT
			CAST('Y2010' AS CHAR(255)) as `Name`,
			CAST(Floor(SUM(CASE
				WHEN `u`.`Year` = 2010 THEN `u`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`
		FROM
			`CategorySales` `u`
		GROUP BY
			`u`.`Category`
		UNION ALL
		SELECT
			CAST('Y2020' AS CHAR(255)) as `Name`,
			CAST(Floor(SUM(CASE
				WHEN `g_1`.`Year` = 2020 THEN `g_1`.`Amount`
				ELSE NULL
			END)) AS SIGNED) as `Value_1`
		FROM
			`CategorySales` `g_1`
		GROUP BY
			`g_1`.`Category`
	) `u_1`
WHERE
	`u_1`.`Name` = 'Y2020'

