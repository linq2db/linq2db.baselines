﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value1 Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	@Value1
FROM
	`Parent` `p`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

