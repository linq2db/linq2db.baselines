BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`,
	`Child` `_`
WHERE
	`_`.`ParentID` > 0

