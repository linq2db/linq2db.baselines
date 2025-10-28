BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_2`.`MAX_1`,
	`g_2`.`COUNT_1` + 1,
	`g_2`.`COUNT_1`,
	`g_2`.`COUNT_2`
FROM
	(
		SELECT
			MAX(`g_1`.`ChildID`) as `MAX_1`,
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 20 THEN 1
				ELSE NULL
			END) as `COUNT_1`,
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 10 THEN 1
				ELSE NULL
			END) as `COUNT_2`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`

