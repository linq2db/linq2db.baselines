BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(NULL AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(2147483648.123 AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

