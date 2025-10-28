BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE INDEX FOR JOIN(IX_ChildIndex, IX_ChildIndex2)

