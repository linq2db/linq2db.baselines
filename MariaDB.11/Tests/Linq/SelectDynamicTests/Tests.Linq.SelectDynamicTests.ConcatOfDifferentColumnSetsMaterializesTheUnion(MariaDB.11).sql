-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`Id`,
	`x`.`Usd`,
	CAST(NULL AS DECIMAL(29, 10))
FROM
	`Amounts` `x`
WHERE
	`x`.`Id` = 1
UNION ALL
SELECT
	`x_1`.`Id`,
	CAST(NULL AS DECIMAL(29, 10)),
	`x_1`.`Eur`
FROM
	`Amounts` `x_1`
WHERE
	`x_1`.`Id` = 2

