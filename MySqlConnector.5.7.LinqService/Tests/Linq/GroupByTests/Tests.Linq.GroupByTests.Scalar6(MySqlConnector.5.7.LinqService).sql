BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			Max(`ch`.`ChildID`)
		FROM
			`Child` `ch`
		WHERE
			`ch_1`.`ParentID` = `ch`.`ParentID` AND `ch`.`ParentID` < 3 AND
			`ch`.`ParentID` < 3
	)
FROM
	`Child` `ch_1`
WHERE
	`ch_1`.`ParentID` < 3
GROUP BY
	`ch_1`.`ParentID`

