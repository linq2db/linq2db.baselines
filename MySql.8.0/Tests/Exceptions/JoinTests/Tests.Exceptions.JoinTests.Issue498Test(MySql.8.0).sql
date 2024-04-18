BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
		INNER JOIN `Child` `y` ON `x`.`ParentID` = `y`.`ParentID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
		INNER JOIN `Child` `y` ON `x`.`ParentID` = `y`.`ParentID`
GROUP BY
	`x`.`ParentID`

