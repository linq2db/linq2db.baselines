﻿BeforeExecute
BeginTransactionAsync
BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

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
CommitTransactionAsync
BeforeExecute
-- MySql MySql.Official MySql

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` = 1010

