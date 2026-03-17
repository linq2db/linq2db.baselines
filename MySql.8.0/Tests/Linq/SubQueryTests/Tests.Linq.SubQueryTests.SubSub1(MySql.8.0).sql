-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p1`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` + 1 < `p1`.`ParentID` + 1
	)
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` > -1

