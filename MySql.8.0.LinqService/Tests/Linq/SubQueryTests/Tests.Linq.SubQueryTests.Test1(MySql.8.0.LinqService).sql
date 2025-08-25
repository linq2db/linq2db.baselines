BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	(
		SELECT
			MAX(`ch`.`ChildID`)
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

