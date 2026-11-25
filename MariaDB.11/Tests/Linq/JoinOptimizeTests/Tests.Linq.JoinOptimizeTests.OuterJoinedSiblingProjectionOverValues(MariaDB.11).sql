-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `n`.`A` IS NULL THEN NULL
		WHEN `n`.`B` IS NULL THEN `c_1`.`ParentID`
		ELSE NULL
	END
FROM
	`Child` `c_1`
		LEFT JOIN (
			SELECT 11 AS `A`, CAST(NULL AS SIGNED) AS `B`
			UNION ALL
			SELECT 21, 1) `n` ON `n`.`A` = `c_1`.`ChildID`
WHERE
	`c_1`.`ChildID` = 11 OR `c_1`.`ChildID` = 21 OR `c_1`.`ChildID` = 22

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `n_1`.`c1` IS NULL THEN NULL
		WHEN `n_1`.`B` IS NULL THEN `c_1`.`ParentID`
		ELSE NULL
	END
FROM
	`Child` `c_1`
		LEFT JOIN (
			SELECT
				`n`.`B`,
				`n`.`A`,
				1 as `c1`
			FROM
				(
					SELECT 11 AS `A`, CAST(NULL AS SIGNED) AS `B`
					UNION ALL
					SELECT 21, 1) `n`
		) `n_1` ON `n_1`.`A` >= `c_1`.`ChildID` AND `n_1`.`A` <= `c_1`.`ChildID`
WHERE
	`c_1`.`ChildID` = 11 OR `c_1`.`ChildID` = 21 OR `c_1`.`ChildID` = 22

