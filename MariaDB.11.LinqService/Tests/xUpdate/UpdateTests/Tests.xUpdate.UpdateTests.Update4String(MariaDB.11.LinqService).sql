﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
SET
	`c_1`.`ChildID` = `c_1`.`ChildID` + 1
WHERE
	`c_1`.`ChildID` = @id AND `a_Parent`.`Value1` = 1 AND
	`a_Parent`.`Value1` IS NOT NULL

