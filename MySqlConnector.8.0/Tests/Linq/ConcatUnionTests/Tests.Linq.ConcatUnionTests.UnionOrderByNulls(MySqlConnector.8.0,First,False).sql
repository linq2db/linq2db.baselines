-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	(
		SELECT
			`p`.`Value1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` < 5
		UNION
		SELECT
			`p_1`.`Value1`,
			`p_1`.`ParentID`
		FROM
			`Parent` `p_1`
		WHERE
			`p_1`.`ParentID` >= 3
	) `t1`
ORDER BY
	CASE
		WHEN `t1`.`Value1` IS NULL THEN 0
		ELSE 1
	END,
	`t1`.`Value1`,
	`t1`.`ParentID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

