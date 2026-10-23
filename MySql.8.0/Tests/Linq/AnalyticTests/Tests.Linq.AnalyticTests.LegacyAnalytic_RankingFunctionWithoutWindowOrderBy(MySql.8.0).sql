-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	ROW_NUMBER() OVER (PARTITION BY `p`.`Value1`)
FROM
	`Parent` `p`

