BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`a_Patient`.`PersonID` IS NOT NULL
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`

