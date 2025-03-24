﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 5

SELECT
	`g_2`.`Key_1`,
	COUNT(*)
FROM
	(
		SELECT
			Date(CURRENT_TIMESTAMP) as `Key_1`
		FROM
			`Parent` `g_1`
				INNER JOIN `Child` `s` ON `g_1`.`ParentID` = `s`.`ParentID`
		WHERE
			`g_1`.`Value1` > 0
	) `g_2`
GROUP BY
	`g_2`.`Key_1`
LIMIT @take

