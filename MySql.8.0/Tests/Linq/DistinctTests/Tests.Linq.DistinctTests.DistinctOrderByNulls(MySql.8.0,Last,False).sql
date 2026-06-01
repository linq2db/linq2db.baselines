-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`Value1`
FROM
	(
		SELECT DISTINCT
			`p`.`Value1`
		FROM
			`Parent` `p`
	) `t1`
ORDER BY
	CASE
		WHEN `t1`.`Value1` IS NULL THEN 1
		ELSE 0
	END,
	`t1`.`Value1`
LIMIT @take

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

