BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID

