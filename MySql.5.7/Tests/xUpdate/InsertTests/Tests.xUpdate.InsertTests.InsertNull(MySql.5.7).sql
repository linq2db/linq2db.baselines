﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = NULL

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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1001

