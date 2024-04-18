BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID`
	) AND
	`p`.`ParentID` > 100

