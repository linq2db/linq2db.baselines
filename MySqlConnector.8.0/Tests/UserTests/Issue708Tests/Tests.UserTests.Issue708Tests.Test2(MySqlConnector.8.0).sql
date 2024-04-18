BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

