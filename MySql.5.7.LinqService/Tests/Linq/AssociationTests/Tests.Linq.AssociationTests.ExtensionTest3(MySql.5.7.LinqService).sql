BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Parent`.`ParentID`
FROM
	`Child` `_`
		LEFT JOIN `Parent` `a_Parent` ON `_`.`ParentID` = `a_Parent`.`ParentID`

