﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` = @id

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

