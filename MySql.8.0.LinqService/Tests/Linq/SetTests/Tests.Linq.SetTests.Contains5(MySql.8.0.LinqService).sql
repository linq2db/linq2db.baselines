BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` + 1 IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	)

