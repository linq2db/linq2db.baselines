-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

