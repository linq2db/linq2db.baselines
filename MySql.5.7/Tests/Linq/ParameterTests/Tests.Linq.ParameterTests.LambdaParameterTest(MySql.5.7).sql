﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 1

SELECT
	`r`.`ParentID`,
	`r`.`Value1`
FROM
	`Parent` `r`
WHERE
	`r`.`ParentID` = @p

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

