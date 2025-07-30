BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t1_1`
		WHERE
			`t1`.`ParentID` = `t1_1`.`ParentID`
	)
FROM
	`Parent` `t1`

