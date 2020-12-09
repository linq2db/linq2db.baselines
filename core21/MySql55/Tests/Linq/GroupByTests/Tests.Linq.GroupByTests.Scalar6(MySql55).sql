BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	(
		SELECT
			Max(`ch`.`ChildID`)
		FROM
			`Child` `ch`
		WHERE
			`ch_1`.`ParentID` = `ch`.`ParentID` AND `ch`.`ParentID` < 3 AND `ch`.`ParentID` < 3
	)
FROM
	`Child` `ch_1`
WHERE
	`ch_1`.`ParentID` < 3
GROUP BY
	`ch_1`.`ParentID`

