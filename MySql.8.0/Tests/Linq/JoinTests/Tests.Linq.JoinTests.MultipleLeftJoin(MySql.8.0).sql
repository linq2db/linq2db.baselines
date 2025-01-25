BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`childLeftJoin`.`ChildID`,
	`grandChildLeftJoin`.`GrandChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `GrandChild` `grandChildLeftJoin` ON `t1`.`ParentID` = `grandChildLeftJoin`.`ParentID`
		LEFT JOIN `Child` `childLeftJoin` ON `t1`.`ParentID` = `childLeftJoin`.`ParentID`

