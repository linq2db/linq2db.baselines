-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(0 AS SIGNED),
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 3
UNION ALL
SELECT
	CAST(1 AS SIGNED),
	`p_1`.`ParentID`,
	`p_1`.`Value1`
FROM
	`Parent` `p_1`
WHERE
	`p_1`.`ParentID` <= 3

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

