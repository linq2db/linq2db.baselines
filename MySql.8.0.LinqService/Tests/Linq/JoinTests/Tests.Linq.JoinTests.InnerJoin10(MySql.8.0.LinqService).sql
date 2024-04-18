BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`q`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q` ON `p`.`ParentID` = `q`.`ParentID`

