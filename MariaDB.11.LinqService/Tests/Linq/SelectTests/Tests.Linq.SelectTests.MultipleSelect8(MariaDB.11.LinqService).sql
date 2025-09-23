BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p2`.`PersonID` * 2) / @Length,
	`p2`.`FirstName`
FROM
	`Person` `p2`

