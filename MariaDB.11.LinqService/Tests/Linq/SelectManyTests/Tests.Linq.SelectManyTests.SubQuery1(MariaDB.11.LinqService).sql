BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1

SELECT
	`p1`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p`
WHERE
	`p1`.`PersonID` = `p`.`PersonID` AND `p`.`PersonID` = @id

