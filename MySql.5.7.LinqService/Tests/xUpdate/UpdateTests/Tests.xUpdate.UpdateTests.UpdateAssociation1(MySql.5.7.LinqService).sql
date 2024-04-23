BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`Parent` `a_Parent`,
	`Child` `child_1`
SET
	`a_Parent`.`Value1` = 5
WHERE
	`child_1`.`ChildID` = 10000 AND `child_1`.`ParentID` = `a_Parent`.`ParentID`

