﻿BeforeExecute
-- MariaDB MySqlConnector MySql
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
BeginTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Parent` `t`
SET
	`t`.`Value1` = 1012
WHERE
	`t`.`ParentID` = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`ParentID` = 1010
LIMIT 1

