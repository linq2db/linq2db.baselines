BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	(
		SELECT 
			Min(`keyParam`.`ChildID`)
		FROM
			`Child` `keyParam`
		WHERE
			`g_2`.`ParentID` = `keyParam`.`ParentID` AND `keyParam`.`ParentID` > 2
	)
FROM
	( 
		SELECT 
			(
				SELECT 
					Min(`keyParam_1`.`ChildID`)
				FROM
					`Child` `keyParam_1`
				WHERE
					`g_1`.`ParentID` = `keyParam_1`.`ParentID` AND `keyParam_1`.`ParentID` > 2
			) as `ex`, 
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	`g_2`.`ex` IS NOT NULL

