BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Child` `c_2` ON `c_2`.`ChildID` = 11
SET
	`p`.`ParentID` = `c_2`.`ParentID` + 1000
WHERE
	`p`.`ParentID` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Parent` `_`
SET
	`_`.`ParentID` = 1
WHERE
	`_`.`ParentID` = 1001

