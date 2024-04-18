﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT @take
	) `t2`

