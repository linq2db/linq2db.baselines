﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @param Int32
SET     @param = 1

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`Value1` = @param

