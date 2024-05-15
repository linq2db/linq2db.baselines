BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

