﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

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
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

