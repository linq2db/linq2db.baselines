-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 4

SELECT DISTINCT
	`t1`.`ParentID`
FROM
	(
		SELECT
			`ch`.`ParentID`
		FROM
			`Child` `ch`
		ORDER BY
			`ch`.`ParentID`
		LIMIT @take
	) `t1`

