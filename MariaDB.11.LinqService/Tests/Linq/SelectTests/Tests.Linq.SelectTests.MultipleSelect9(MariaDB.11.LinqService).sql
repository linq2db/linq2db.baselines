BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p5`.`PersonID` * @Length) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

