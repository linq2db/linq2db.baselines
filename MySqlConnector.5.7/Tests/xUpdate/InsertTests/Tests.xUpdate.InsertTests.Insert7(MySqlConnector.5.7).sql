BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001
DECLARE @ParentID Int32
SET     @ParentID = 1

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	@id,
	@ParentID
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

