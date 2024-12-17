BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				1 = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END as `c1`

