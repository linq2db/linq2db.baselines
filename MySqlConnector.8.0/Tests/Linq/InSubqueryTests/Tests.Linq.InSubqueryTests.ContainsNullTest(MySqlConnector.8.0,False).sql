﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `c_1`
			WHERE
				`c_1`.`Value1` IS NULL
		)
			THEN 1
		ELSE 0
	END as `c1`

