﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT @skip, 9223372036854775807
	) `t2`

