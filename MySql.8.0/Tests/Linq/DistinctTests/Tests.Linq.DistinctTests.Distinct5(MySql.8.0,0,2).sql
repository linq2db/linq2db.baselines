﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	@Value1
FROM
	`Parent` `p`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

