-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY `p`.`ParentID`),
	ROW_NUMBER() OVER (ORDER BY `p`.`ParentID`)
FROM
	`Parent` `p`

