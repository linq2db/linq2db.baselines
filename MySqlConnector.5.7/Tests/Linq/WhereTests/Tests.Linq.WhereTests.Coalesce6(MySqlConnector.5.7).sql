BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	CASE
		WHEN `p`.`Value1` = 1 THEN 10
		ELSE 20
	END = 20

