-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(`gr`.`ParentID`), @defValue)
FROM
	`Parent` `gr`

