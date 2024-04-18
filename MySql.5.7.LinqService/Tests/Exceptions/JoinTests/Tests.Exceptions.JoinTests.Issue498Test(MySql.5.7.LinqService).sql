BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
		INNER JOIN `Child` `y` ON `x`.`ParentID` = `y`.`ParentID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
		INNER JOIN `Child` `y` ON `x`.`ParentID` = `y`.`ParentID`
GROUP BY
	`x`.`ParentID`

