BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
			WHERE
				`p`.`ParentID` = `c_1`.`ParentID`
			LIMIT @take
		) `t1` ON 1=1

