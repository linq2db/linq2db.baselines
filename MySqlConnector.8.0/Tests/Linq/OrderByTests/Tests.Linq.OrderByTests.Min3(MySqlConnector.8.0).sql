BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	MIN(`t2`.`ParentID`)
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`Value1`
		LIMIT @take
	) `t2`

