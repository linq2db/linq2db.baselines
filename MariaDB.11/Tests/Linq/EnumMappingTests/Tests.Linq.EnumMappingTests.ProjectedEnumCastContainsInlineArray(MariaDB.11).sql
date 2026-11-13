-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` IN ('F', 'O')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

