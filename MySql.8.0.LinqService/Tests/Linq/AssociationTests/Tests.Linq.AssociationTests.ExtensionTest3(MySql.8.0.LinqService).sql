BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a_Parent`.`ParentID`
FROM
	`Child` `_`
		LEFT JOIN `Parent` `a_Parent` ON `_`.`ParentID` = `a_Parent`.`ParentID`

