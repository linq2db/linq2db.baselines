BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`ch_3`.`ParentID`, 
	Min(`ch_3`.`ChildID`), 
	(
		SELECT 
			Count(*)
		FROM
			( 
				SELECT 
					`ch`.`ParentID` + 1 as `ParentID`, 
					`ch`.`ChildID`
				FROM
					`Child` `ch`
			) `ch_1`
		WHERE
			`ch_3`.`ParentID` = `ch_1`.`ParentID` AND `ch_1`.`ChildID` > 25 AND
			`ch_1`.`ParentID` - 1 > 0
	)
FROM
	( 
		SELECT 
			`ch_2`.`ParentID` + 1 as `ParentID`, 
			`ch_2`.`ChildID`
		FROM
			`Child` `ch_2`
	) `ch_3`
WHERE
	`ch_3`.`ParentID` - 1 > 0
GROUP BY
	`ch_3`.`ParentID`

