BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT DISTINCT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
		LIMIT @take
	)
FROM
	`Parent` `p`

