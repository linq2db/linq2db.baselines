BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

