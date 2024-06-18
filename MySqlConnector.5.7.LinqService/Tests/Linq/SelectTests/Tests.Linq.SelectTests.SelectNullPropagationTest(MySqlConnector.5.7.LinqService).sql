BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `q`.`ParentID` IS NOT NULL THEN `q`.`ParentID`
		ELSE 0
	END
FROM
	`Parent` `q`

