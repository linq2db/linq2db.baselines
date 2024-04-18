BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(`t1`.`ParentID`), @defValue)
FROM
	`Parent` `t1`

