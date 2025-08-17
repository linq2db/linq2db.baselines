BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @userId Int32
SET     @userId = 32
DECLARE @childId Int32
SET     @childId = 32

SELECT
	`child_1`.`ParentID`
FROM
	`Parent` `child_1`
		INNER JOIN `Child` `a_Childs` ON `child_1`.`ParentID` = `a_Childs`.`ParentID`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `permission`
		WHERE
			`child_1`.`ParentID` = `permission`.`ParentID` AND
			`permission`.`ChildID` = @userId
	) AND
	`a_Childs`.`ChildID` = @childId

