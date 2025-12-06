-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`Value1` = 11

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
SELECT
	`c_1`.`ParentID` + 1000,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = 11

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`Value1` = 11

