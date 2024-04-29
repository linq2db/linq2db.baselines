﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

