-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			MAX(`ch`.`ChildID`)
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` = `p`.`ParentID` AND `ch`.`ChildID` > 1
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

