BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`nm_1`.`MiddleName`
FROM
	(
		SELECT
			Char_Length(`nm`.`MiddleName`) as `Length_1`,
			`nm`.`MiddleName`
		FROM
			`Person` `nm`
	) `nm_1`
WHERE
	(`nm_1`.`Length_1` <> 0 OR `nm_1`.`Length_1` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

