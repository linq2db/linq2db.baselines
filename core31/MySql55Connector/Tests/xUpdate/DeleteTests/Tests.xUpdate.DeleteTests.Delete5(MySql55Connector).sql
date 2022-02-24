﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1002

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` IN (1001, 1002)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

