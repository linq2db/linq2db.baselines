BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`a_Children`.`ChildID`,
	`a_Children`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON CAST(`p`.`ParentID` AS SIGNED) = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` = 1

