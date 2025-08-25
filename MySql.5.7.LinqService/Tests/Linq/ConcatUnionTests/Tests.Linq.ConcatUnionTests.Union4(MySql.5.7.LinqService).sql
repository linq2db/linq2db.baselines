BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`p`.`ParentID`,
	CAST(1 AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	CAST(0 AS SIGNED)
FROM
	`Child` `ch`

