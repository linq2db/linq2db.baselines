BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Length Int32
SET     @Length = 4

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CHAR_LENGTH(`p`.`FirstName`) = @Length AND `p`.`PersonID` = 1

