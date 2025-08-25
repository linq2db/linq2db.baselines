BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(`gr`.`ParentID`), @defValue)
FROM
	`Parent` `gr`

