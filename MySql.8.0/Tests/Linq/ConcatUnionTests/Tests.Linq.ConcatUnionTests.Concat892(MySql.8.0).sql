-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
UNION
SELECT
	NULL,
	`c_2`.`ParentID`
FROM
	`Parent` `c_2`
UNION ALL
SELECT
	`c_3`.`ParentID`,
	`c_3`.`ParentID`
FROM
	`Child` `c_3`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

