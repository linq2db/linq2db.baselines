﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p_1`.`item_1`,
	`p_1`.`ParentID`,
	`p_1`.`Value_1`
FROM
	(
		SELECT
			CASE
				WHEN `i`.`item` = 0 THEN NULL
				ELSE `p`.`ParentID`
			END as `ID`,
			`p`.`Value1` as `Value_1`,
			`i`.`item` as `item_1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
				CROSS JOIN (
					SELECT 0 AS `item`
					UNION ALL
					SELECT 1) `i`
	) `p_1`
WHERE
	(`p_1`.`ID` = `p_1`.`Value_1` OR `p_1`.`ID` IS NULL AND `p_1`.`Value_1` IS NULL)

