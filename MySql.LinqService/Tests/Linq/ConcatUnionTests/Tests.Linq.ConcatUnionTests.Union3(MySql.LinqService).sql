BeforeExecute
-- MySql MySql.Official MySql

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

