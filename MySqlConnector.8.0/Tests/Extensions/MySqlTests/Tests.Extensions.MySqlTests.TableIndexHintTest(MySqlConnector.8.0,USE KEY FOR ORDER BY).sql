BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ BKA(p) MAX_EXECUTION_TIME(1000) */
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE KEY FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)

