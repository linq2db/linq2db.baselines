-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
SET
	`p`.`ParentID` = (
		SELECT
			`c_2`.`ParentID`
		FROM
			`Child` `c_2`
		WHERE
			`c_2`.`ChildID` = 11
	) + 1000
WHERE
	`p`.`ParentID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1

UPDATE
	`Parent` `t1`
SET
	`t1`.`ParentID` = @ParentID
WHERE
	`t1`.`ParentID` = 1001

