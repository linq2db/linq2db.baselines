﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 2

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	1001,
	@Value1
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001
DECLARE @Value1 Int32
SET     @Value1 = 2

SELECT
	Count(*)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` = @id AND `_`.`Value1` = @Value1

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `_`
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` > 1000

