BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Max(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

