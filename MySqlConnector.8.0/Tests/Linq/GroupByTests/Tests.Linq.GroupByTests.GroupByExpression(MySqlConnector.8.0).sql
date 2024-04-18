BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(`t1`.`ParentID`), @defValue)
FROM
	`Parent` `t1`

