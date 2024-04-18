BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`t1`.`ParentID`,
	`t1`.`c1`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				`c_1`.`ParentID` + 1 as `c1`,
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
			LIMIT @take
		) `t1` ON 1=1

