﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT @take
	) `t2`

