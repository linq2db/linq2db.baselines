﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `_`
		)
			THEN 1
		ELSE 0
	END as `c1`

