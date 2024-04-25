BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `t1`
WHERE
	(`t1`.`PersonID` = @id OR `t1`.`PersonID` <= @id OR `t1`.`PersonID` = @id)

