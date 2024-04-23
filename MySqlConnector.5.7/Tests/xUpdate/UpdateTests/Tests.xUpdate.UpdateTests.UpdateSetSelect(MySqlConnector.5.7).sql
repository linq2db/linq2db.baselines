BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Child` `c_2` ON `c_2`.`ChildID` = 11
SET
	`p`.`ParentID` = `c_2`.`ParentID` + 1000
WHERE
	`p`.`ParentID` = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1

UPDATE
	`Parent` `_`
SET
	`_`.`ParentID` = @ParentID
WHERE
	`_`.`ParentID` = 1001

