﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Child` `t1`
		LIMIT @skip, @take
	) `t2`

