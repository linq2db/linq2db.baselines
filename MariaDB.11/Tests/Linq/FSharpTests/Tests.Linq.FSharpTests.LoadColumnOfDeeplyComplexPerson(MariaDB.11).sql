BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT 2

