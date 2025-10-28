BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE INDEX FOR GROUP BY(IX_ChildIndex, IX_ChildIndex2)

