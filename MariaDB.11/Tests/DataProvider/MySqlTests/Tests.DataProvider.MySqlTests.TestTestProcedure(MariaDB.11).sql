BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param3 Int32
SET     @param3 = 123
DECLARE @param2 Int32
SET     @param2 = 5
DECLARE @param1 Int32
SET     @param1 = NULL

`TestProcedure`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

