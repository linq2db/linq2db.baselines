-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			NULL as `Value_1`
		FROM
			`Person` `r`
	) `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			3.14748365E+09 as `Value_1`
		FROM
			`Person` `r`
	) `t1`

