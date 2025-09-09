BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	CASE
		WHEN `p`.`Value1` IS NOT NULL THEN `p`.`Value1`
		ELSE 0
	END
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` IS NOT NULL AND `p`.`Value1` > 0

