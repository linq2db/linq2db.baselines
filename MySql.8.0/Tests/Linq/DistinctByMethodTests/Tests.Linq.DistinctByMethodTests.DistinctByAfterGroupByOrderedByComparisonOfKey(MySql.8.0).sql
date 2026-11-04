-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`RowNumber_2`,
	`t1`.`Count_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`RowNumber` ORDER BY `e`.`RowNumber_1` DESC, `e`.`RowNumber_2`) as `RowNumber`,
			`e`.`RowNumber_1`,
			`e`.`RowNumber_2`,
			`e`.`Count_1`
		FROM
			(
				SELECT
					`g_1`.`ParentID` % 2 as `RowNumber`,
					`g_1`.`ParentID` > 2 as `RowNumber_1`,
					`g_1`.`ParentID` as `RowNumber_2`,
					COUNT(*) as `Count_1`
				FROM
					`Parent` `g_1`
				GROUP BY
					`g_1`.`ParentID`
			) `e`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`RowNumber_1` DESC,
	`t1`.`RowNumber_2`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

