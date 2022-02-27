BeforeExecute
-- MySqlConnector MySql

SELECT
	`g_1`.`ParentID`
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					`Child` `keyParam`
				WHERE
					`t1`.`ParentID` = `keyParam`.`ParentID` AND `keyParam`.`ChildID` > 20
			) as `cnt`,
			(
				SELECT
					Count(*)
				FROM
					`Child` `keyParam_1`
				WHERE
					`t1`.`ParentID` = `keyParam_1`.`ParentID` AND `keyParam_1`.`ChildID` = 20
			) as `ex`,
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `g_1`
WHERE
	(`g_1`.`cnt` > 2 OR `g_1`.`ex` > 2)

