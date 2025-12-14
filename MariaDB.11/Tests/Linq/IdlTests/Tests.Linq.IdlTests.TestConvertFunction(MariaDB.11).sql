-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID`
FROM
	`Patient` `x`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`
FROM
	`Person` `x`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID`,
	`person_1`.`PersonID`,
	`person_1`.`FirstName`
FROM
	`Patient` `x`
		INNER JOIN `Person` `person_1` ON `x`.`PersonID` = `person_1`.`PersonID`

