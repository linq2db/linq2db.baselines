﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

