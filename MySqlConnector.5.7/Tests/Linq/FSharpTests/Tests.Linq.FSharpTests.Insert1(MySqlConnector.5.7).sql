-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	@ParentID,
	@ChildID
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 1001

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

