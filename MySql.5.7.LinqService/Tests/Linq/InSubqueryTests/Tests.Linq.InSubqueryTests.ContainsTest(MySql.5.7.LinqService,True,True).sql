BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			1 = `c_1`.`ParentID`
	) as `c1`

