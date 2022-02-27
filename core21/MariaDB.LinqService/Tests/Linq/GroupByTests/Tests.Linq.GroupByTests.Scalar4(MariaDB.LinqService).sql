BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	(
		SELECT
			Min(`keyParam`.`ChildID`)
		FROM
			`Child` `keyParam`
		WHERE
			`g_1`.`ParentID` = `keyParam`.`ParentID` AND `keyParam`.`ParentID` > 2
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
					`t1`.`ParentID` = `keyParam_1`.`ParentID` AND `keyParam_1`.`ParentID` > 2
			) as `ex`,
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `g_1`
WHERE
	`g_1`.`ex` IS NOT NULL

