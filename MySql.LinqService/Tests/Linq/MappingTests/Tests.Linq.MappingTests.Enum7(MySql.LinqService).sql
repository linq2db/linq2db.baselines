﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @v1 Int32
SET     @v1 = 1
DECLARE @v1_1 Int32
SET     @v1_1 = 1

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @v1
WHERE
	`p`.`Value1` = @v1_1

