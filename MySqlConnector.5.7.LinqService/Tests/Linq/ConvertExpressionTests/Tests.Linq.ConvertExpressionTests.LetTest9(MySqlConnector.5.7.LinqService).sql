BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @take Int32
SET     @take = 10

SELECT
	(
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID`
		ORDER BY
			`c_1`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`c_2`.`ChildID`
		FROM
			`Child` `c_2`
		WHERE
			`c_2`.`ParentID` = `p`.`ParentID`
		ORDER BY
			`c_2`.`ChildID`
		LIMIT 1
	)
FROM
	`Parent` `p`
LIMIT @take

