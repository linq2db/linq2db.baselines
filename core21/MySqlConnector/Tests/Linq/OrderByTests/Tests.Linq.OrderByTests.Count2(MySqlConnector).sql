BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`Value1`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT @take
	) `t2`

