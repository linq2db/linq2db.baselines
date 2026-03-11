-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	`c_2`.`ParentID`
FROM
	`Parent` `c_2`

