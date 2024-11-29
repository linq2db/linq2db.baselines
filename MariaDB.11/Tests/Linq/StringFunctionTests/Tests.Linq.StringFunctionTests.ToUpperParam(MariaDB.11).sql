BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Upper(`p`.`FirstName`) = Upper(@param) AND `p`.`PersonID` = 1

