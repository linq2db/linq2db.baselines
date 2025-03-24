﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t2`.`F2`
FROM
	(
		SELECT DISTINCT
			`t1`.`F1`,
			`t1`.`F2`
		FROM
			`DistinctOrderByTable` `t1`
	) `t2`
ORDER BY
	`t2`.`F1` DESC
LIMIT @skip, 9223372036854775807

