BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`nm`.`FirstName`
FROM
	`Person` `nm`
WHERE
	NOT (`nm`.`FirstName` IS NULL OR Char_Length(`nm`.`FirstName`) = 0)

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

