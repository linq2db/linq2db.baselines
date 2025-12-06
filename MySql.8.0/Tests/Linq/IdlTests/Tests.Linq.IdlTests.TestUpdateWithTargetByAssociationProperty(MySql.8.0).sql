-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	20000
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	10000,
	20000
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Parent` `a_Parent`,
	`Child` `child_1`
SET
	`a_Parent`.`Value1` = 5
WHERE
	`child_1`.`ChildID` = 10000 AND `child_1`.`ParentID` = `a_Parent`.`ParentID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` = 10000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 20000

