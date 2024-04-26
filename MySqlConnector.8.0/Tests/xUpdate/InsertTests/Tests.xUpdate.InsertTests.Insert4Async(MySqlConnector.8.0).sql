BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
SELECT
	`c_1`.`ParentID`,
	@id
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

