﻿BeforeExecute
-- MariaDB MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

BeforeExecute
-- MariaDB MySql

SELECT
	1
FROM
	`Parent` `p`

