﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`_p` = @p
WHERE
	`t`.`_p` = 1

