﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1

SELECT
	`r`.`ParentID`,
	`r`.`Value1`
FROM
	`Parent` `r`
WHERE
	`r`.`ParentID` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

