-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`PersonID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Patient` `pa`
				INNER JOIN `Person` `pe` ON `pa`.`PersonID` = `pe`.`PersonID`
		WHERE
			`pa`.`PersonID` = `p`.`PersonID`
	)
FROM
	`Person` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

