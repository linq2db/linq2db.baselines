BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	@ParentID,
	@id
)

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

