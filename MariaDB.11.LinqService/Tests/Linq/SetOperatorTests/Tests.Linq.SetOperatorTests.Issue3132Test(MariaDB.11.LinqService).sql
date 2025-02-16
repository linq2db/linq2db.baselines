BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`x`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x`
WHERE
	`x`.`MiddleName` IS NOT NULL
GROUP BY
	`x`.`MiddleName`
UNION ALL
SELECT
	`x_1`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_1`
WHERE
	`x_1`.`MiddleName` IS NOT NULL
GROUP BY
	`x_1`.`MiddleName`
UNION ALL
SELECT
	`x_2`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_2`
WHERE
	`x_2`.`MiddleName` IS NOT NULL
GROUP BY
	`x_2`.`MiddleName`
UNION ALL
SELECT
	`x_3`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_3`
WHERE
	`x_3`.`MiddleName` IS NOT NULL
GROUP BY
	`x_3`.`MiddleName`
UNION ALL
SELECT
	`x_4`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_4`
WHERE
	`x_4`.`MiddleName` IS NOT NULL
GROUP BY
	`x_4`.`MiddleName`
UNION ALL
SELECT
	`x_5`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_5`
WHERE
	`x_5`.`MiddleName` IS NOT NULL
GROUP BY
	`x_5`.`MiddleName`
UNION ALL
SELECT
	`x_6`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_6`
WHERE
	`x_6`.`MiddleName` IS NOT NULL
GROUP BY
	`x_6`.`MiddleName`
UNION ALL
SELECT
	`x_7`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_7`
WHERE
	`x_7`.`MiddleName` IS NOT NULL
GROUP BY
	`x_7`.`MiddleName`
UNION ALL
SELECT
	`x_8`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_8`
WHERE
	`x_8`.`MiddleName` IS NOT NULL
GROUP BY
	`x_8`.`MiddleName`
UNION ALL
SELECT
	`x_9`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_9`
WHERE
	`x_9`.`MiddleName` IS NOT NULL
GROUP BY
	`x_9`.`MiddleName`
UNION ALL
SELECT
	`x_10`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_10`
WHERE
	`x_10`.`MiddleName` IS NOT NULL
GROUP BY
	`x_10`.`MiddleName`
UNION ALL
SELECT
	`x_11`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_11`
WHERE
	`x_11`.`MiddleName` IS NOT NULL
GROUP BY
	`x_11`.`MiddleName`
UNION ALL
SELECT
	`x_12`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_12`
WHERE
	`x_12`.`MiddleName` IS NOT NULL
GROUP BY
	`x_12`.`MiddleName`
UNION ALL
SELECT
	`x_13`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_13`
WHERE
	`x_13`.`MiddleName` IS NOT NULL
GROUP BY
	`x_13`.`MiddleName`
UNION ALL
SELECT
	`x_14`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_14`
WHERE
	`x_14`.`MiddleName` IS NOT NULL
GROUP BY
	`x_14`.`MiddleName`
UNION ALL
SELECT
	`x_15`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_15`
WHERE
	`x_15`.`MiddleName` IS NOT NULL
GROUP BY
	`x_15`.`MiddleName`
UNION ALL
SELECT
	`x_16`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_16`
WHERE
	`x_16`.`MiddleName` IS NOT NULL
GROUP BY
	`x_16`.`MiddleName`
UNION ALL
SELECT
	`x_17`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_17`
WHERE
	`x_17`.`MiddleName` IS NOT NULL
GROUP BY
	`x_17`.`MiddleName`
UNION ALL
SELECT
	`x_18`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_18`
WHERE
	`x_18`.`MiddleName` IS NOT NULL
GROUP BY
	`x_18`.`MiddleName`
UNION ALL
SELECT
	`x_19`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_19`
WHERE
	`x_19`.`MiddleName` IS NOT NULL
GROUP BY
	`x_19`.`MiddleName`
UNION ALL
SELECT
	`x_20`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `x_20`
WHERE
	`x_20`.`MiddleName` IS NOT NULL
GROUP BY
	`x_20`.`MiddleName`

