BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`parent_1`.`ParentID`,
	`childLeftJoin`.`ChildID`,
	`grandChildLeftJoin`.`GrandChildID`
FROM
	`Parent` `parent_1`
		LEFT JOIN `GrandChild` `grandChildLeftJoin` ON `parent_1`.`ParentID` = `grandChildLeftJoin`.`ParentID`
		LEFT JOIN `Child` `childLeftJoin` ON `parent_1`.`ParentID` = `childLeftJoin`.`ParentID`

