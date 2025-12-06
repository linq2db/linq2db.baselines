-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` <= 3
	) as `c1`

