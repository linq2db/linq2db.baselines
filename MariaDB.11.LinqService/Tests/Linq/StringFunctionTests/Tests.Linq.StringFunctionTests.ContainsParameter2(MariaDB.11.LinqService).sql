BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @str VarChar(3) -- String
SET     @str = 'o%h'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	NOT LOCATE(@str, `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

