BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`
WHERE
	`t1`.`PersonID` = @ID

