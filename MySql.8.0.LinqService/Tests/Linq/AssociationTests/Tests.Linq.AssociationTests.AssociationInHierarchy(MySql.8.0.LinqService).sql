BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`o`.`ParentID`,
	`o`.`Value1`
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `o` ON `ch`.`ParentID` = `o`.`ParentID` AND `ch`.`ChildID` = 1

