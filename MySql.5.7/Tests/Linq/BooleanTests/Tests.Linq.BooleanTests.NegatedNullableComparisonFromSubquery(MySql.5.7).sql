-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

