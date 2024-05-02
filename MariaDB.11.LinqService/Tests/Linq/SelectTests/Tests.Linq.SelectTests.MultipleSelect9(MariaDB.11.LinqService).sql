BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(`p2`.`PersonID` * @ID) / 2,
	`p2`.`FirstName`
FROM
	`Person` `p2`

