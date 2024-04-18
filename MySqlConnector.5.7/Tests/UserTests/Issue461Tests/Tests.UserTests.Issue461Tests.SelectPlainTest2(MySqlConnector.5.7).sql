BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	(
		SELECT
			`c_1`.`ParentID` + 1
		FROM
			`Child` `c_1`
		LIMIT @take
	)
FROM
	`Parent` `p`

