BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
WHERE
	(
		SELECT
			CASE
				WHEN `r`.`GuidValue` IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			`LinqDataTypes` `r`
		LIMIT 1
	) = 1

