BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	1
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	0
FROM
	`Child` `ch`

