BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`,
	`a_Patient`.`PersonID`,
	`a_Patient`.`Diagnosis`
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`,
	`a_Patient`.`PersonID`,
	`a_Patient`.`Diagnosis`
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`
WHERE
	`p`.`PersonID` = 2
LIMIT 2

