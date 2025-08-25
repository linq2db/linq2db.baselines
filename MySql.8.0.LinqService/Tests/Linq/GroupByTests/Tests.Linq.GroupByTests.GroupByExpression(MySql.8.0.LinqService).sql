BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(`gr`.`ParentID`), @defValue)
FROM
	`Parent` `gr`

