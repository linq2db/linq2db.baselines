BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`r`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `r` ON `p`.`ParentID` = `r`.`ParentID`

