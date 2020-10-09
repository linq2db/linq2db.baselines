BeforeExecute
-- MariaDB MySql.Official MySql

SELECT DISTINCT 
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2)
FROM
	`Parent` `p`

