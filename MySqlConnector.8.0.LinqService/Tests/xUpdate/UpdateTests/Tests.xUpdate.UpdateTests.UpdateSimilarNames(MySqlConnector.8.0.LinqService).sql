BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 20000

UPDATE
	`Child` `parent_1`,
	`Parent` `child_1`
SET
	`parent_1`.`ParentID` = @ParentID
WHERE
	`child_1`.`Value1` = 20000 AND `parent_1`.`ParentID` = `child_1`.`ParentID`

