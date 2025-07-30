BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `g_1` ON `t1`.`ParentID` = `g_1`.`ParentID`
		CROSS JOIN `Person` `t`

