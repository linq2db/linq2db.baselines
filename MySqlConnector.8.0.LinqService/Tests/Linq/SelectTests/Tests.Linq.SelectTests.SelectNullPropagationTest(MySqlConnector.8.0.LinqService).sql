BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 0

SELECT
	CASE
		WHEN `q`.`ParentID` IS NOT NULL THEN `q`.`ParentID`
		ELSE @p
	END
FROM
	`Parent` `q`

