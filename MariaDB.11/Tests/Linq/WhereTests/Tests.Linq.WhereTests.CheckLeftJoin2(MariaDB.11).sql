BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` IS NOT NULL

