BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 OR (`p`.`ParentID` = 2 OR `p`.`ParentID` = 3) AND (`p`.`ParentID` = 3 OR `p`.`ParentID` = 1)

