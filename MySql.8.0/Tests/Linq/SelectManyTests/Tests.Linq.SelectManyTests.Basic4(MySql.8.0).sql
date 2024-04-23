BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `_` ON `p`.`ParentID` = `_`.`ParentID` + 1

