BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` + 100 IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	)

