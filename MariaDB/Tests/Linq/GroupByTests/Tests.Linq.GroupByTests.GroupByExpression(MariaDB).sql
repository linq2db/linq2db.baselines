﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Coalesce(Min(`t1`.`ParentID`), @defValue)
FROM
	`Parent` `t1`

