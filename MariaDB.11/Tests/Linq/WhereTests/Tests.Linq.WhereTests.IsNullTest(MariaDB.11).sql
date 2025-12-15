-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	`nm`.`MiddleName` IS NOT NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

