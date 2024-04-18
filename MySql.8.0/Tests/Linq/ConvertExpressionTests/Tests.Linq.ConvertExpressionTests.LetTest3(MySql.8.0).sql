BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `p_1`
		LEFT JOIN LATERAL (
			SELECT
				`p`.`ParentID`
			FROM
				`Child` `p`
			LIMIT @take
		) `t1` ON 1=1

