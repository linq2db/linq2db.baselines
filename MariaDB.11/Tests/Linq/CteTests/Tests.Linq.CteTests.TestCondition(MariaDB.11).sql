﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @var3 Int32
SET     @var3 = 1

WITH `CTE_1` (`ChildID`, `ParentID`)
AS
(
	SELECT
		`t1`.`ChildID`,
		`t1`.`ParentID`
	FROM
		`Child` `t1`
)
SELECT
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`CTE_1` `t`
WHERE
	`t`.`ChildID` = @var3

