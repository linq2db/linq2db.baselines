BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE INDEX FOR JOIN(IX_ChildIndex, IX_ChildIndex2)

