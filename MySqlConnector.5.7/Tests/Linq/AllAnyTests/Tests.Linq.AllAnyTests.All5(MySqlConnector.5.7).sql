-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @n Int32
SET     @n = 3

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` <= @n
	) as `c1`

