BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`p_1`.`ParentID`,
	`p_1`.`Sum_1`
FROM
	(
		SELECT
			(
				SELECT
					SUM(`a_Children`.`ParentID`)
				FROM
					`Child` `a_Children`
				WHERE
					`p`.`ParentID` = `a_Children`.`ParentID`
			) / 2 as `Sum_1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `p_1`
WHERE
	`p_1`.`Sum_1` > 1

