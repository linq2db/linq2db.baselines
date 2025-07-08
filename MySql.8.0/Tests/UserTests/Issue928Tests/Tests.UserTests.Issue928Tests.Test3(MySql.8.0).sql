BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`,
	`p2_1`.`Key_1`,
	`p2_1`.`Sum1`
FROM
	`Parent` `p1`
		LEFT JOIN (
			SELECT
				`p2`.`Key_1`,
				`p2`.`Sum1`
			FROM
				(
					SELECT
						`g_1`.`ParentID` as `Key_1`,
						SUM(`g_1`.`ParentID`) as `Sum1`
					FROM
						`Parent` `g_1`
					WHERE
						`g_1`.`ParentID` IN (
							SELECT
								`ch`.`ParentID`
							FROM
								`Child` `ch`
						)
					GROUP BY
						`g_1`.`ParentID`
				) `p2`
		) `p2_1` ON `p2_1`.`Key_1` = `p1`.`ParentID`

