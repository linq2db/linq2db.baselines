BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` = 10000

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 20000

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

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
-- MySqlConnector MySql

UPDATE
	`Parent` `child_1`
		INNER JOIN `Child` `a_Parent` ON `a_Parent`.`ParentID` = `child_1`.`ParentID`
SET
	`child_1`.`Value1` = 5
WHERE
	`a_Parent`.`ChildID` = 10000 AND `child_1`.`ParentID` > 0

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` = 10000

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 20000

