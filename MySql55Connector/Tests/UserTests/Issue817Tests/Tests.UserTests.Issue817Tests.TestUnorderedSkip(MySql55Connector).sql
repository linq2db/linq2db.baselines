﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 1

SELECT
	1
FROM
	`Person` `_`
LIMIT @skip, 9223372036854775807

