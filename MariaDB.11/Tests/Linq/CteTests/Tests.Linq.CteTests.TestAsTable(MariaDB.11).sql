BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE1_` (`ParentID`, `ChildID`)
AS
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`ChildID`
	FROM
		`Child` `t1`
)
SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	`CTE1_` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

