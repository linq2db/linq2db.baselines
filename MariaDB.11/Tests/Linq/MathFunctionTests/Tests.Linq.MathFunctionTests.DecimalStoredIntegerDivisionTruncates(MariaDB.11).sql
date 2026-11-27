-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`t`.`X` AS SIGNED) DIV 2
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`
FROM
	`DecimalStoredIntegerTable` `t`
WHERE
	CAST(`t`.`X` AS SIGNED) DIV 2 = -3
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @two NewDecimal -- Decimal
SET     @two = 2

SELECT
	CAST(`t`.`X` AS SIGNED) DIV CAST(@two AS SIGNED)
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`t`.`X` + 1 AS SIGNED) DIV 2
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(-`t`.`X` AS SIGNED) DIV 2
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(Abs(`t`.`X`) AS SIGNED) DIV 2
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	60 DIV CAST(`t`.`X` AS SIGNED)
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`t`.`X` AS SIGNED) DIV CAST(`t`.`X2` AS SIGNED)
FROM
	`DecimalStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`X`,
	`t1`.`X2`
FROM
	`DecimalStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(SUM(`g_1`.`X`) AS SIGNED) DIV 2
FROM
	`DecimalStoredIntegerTable` `g_1`
LIMIT 2

