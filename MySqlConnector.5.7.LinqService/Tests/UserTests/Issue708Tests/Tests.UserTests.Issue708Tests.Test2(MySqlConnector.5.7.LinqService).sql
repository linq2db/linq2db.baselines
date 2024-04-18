BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	`_`.`ParentID`,
	`_`.`ChildID`
FROM
	`Child` `_`
WHERE
	`_`.`ParentID` IN (
		SELECT
			`_1`.`ParentID`
		FROM
			`Parent` `_1`
		WHERE
			`_1`.`ParentID` = @id
	) AND
	`_`.`ChildID` >= 0 AND `_`.`ChildID` <= 100

