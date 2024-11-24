BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @p

