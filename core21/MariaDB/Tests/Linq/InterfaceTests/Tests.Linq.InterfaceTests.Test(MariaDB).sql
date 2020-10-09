BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Count(*)
FROM
	`Parent` `t1`
GROUP BY
	`t1`.`ParentID`

