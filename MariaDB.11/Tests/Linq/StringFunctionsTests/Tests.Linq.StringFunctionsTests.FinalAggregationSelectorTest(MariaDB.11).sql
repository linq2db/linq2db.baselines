﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	GROUP_CONCAT(`t1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

