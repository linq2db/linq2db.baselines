-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`m_1`.`ParentID`,
	`m_1`.`Value1`
FROM
	`Parent` `m_1`
WHERE
	`m_1`.`ParentID` < 4
UNION ALL
SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` >= 4

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

