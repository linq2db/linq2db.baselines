-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 20000

UPDATE
	`Child` `parent_1`,
	`Parent` `child_1`
SET
	`parent_1`.`ParentID` = @ParentID
WHERE
	`child_1`.`Value1` = 20000 AND `parent_1`.`ParentID` = `child_1`.`ParentID`

