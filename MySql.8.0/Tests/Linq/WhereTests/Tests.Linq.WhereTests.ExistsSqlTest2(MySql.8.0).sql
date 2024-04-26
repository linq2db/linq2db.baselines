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
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	) AND
	`p`.`ParentID` > 100

