BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT @take
	) `t2`

