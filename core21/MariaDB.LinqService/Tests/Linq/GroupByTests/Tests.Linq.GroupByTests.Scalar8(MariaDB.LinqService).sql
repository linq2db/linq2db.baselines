BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Max(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

