-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN `p`.`PersonID` > 2 THEN 'M'
		ELSE 'F'
	END IN ('F')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

