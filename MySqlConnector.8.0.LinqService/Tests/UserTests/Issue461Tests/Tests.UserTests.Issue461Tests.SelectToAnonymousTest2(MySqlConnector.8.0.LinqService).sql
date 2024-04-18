BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`Child`
FROM
	`Parent` `sep`
		LEFT JOIN LATERAL (
			SELECT
				`l`.`ParentID` as `Child`
			FROM
				`Child` `l`
			LIMIT @take
		) `t1` ON 1=1

