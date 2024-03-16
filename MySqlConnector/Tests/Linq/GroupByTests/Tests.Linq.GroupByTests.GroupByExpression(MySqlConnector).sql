BeforeExecute
-- MySqlConnector MySql
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(`gr`.`ParentID`), @defValue)
FROM
	`Parent` `gr`

