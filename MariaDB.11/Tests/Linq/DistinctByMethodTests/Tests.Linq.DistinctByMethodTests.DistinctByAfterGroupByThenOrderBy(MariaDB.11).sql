-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`RowNumber_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`RowNumber` % 2 ORDER BY `e`.`RowNumber` DESC) as `RowNumber`,
			`e`.`RowNumber` as `RowNumber_1`
		FROM
			(
				SELECT DISTINCT
					`g_1`.`ParentID` % 3 as `RowNumber`
				FROM
					`Parent` `g_1`
			) `e`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`RowNumber_1` DESC

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

