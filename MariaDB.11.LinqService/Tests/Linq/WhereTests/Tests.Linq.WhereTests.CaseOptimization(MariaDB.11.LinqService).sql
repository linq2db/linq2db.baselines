﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	LOCATE('Str', `x`.`StringValue`) > 0 AND `x`.`StringValue` IS NOT NULL

