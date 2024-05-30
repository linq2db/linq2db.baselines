BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT 2

