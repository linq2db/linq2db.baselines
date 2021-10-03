BeforeExecute
-- MariaDB MySql

SELECT
	Min(`t1`.`ParentID`),
	Max(`t1`.`ParentID`)
FROM
	`Parent` `t1`

