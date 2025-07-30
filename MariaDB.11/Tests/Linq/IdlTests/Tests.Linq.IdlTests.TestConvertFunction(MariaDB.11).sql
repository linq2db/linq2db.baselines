BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`PersonID`
FROM
	`Patient` `x`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`
FROM
	`Person` `x`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`PersonID`,
	`person_1`.`PersonID`,
	`person_1`.`FirstName`
FROM
	`Patient` `x`
		INNER JOIN `Person` `person_1` ON `x`.`PersonID` = `person_1`.`PersonID`

