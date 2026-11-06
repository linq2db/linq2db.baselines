-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`RowNumber_2`,
	`t1`.`RowNumber_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Value1` ORDER BY `e`.`ParentID` DESC) as `RowNumber`,
			`e`.`Value1` as `RowNumber_1`,
			`e`.`ParentID` as `RowNumber_2`
		FROM
			`Parent` `e`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`RowNumber_2` DESC
LIMIT @take

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

