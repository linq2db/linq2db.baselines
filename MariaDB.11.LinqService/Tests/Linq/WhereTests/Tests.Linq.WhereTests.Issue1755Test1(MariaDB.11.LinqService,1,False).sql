BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`Value1`
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` = @id AND `c_1`.`Value1` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

