-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Key_1`,
	`t1`.`Count_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`RowNumber` ORDER BY CONCAT(`e`.`Key_1`, 'x') DESC) as `RowNumber`,
			CONCAT(`e`.`Key_1`, 'x') as `RowNumber_1`,
			`e`.`Key_1`,
			COUNT(*) as `Count_1`
		FROM
			(
				SELECT
					`g_1`.`FirstName` as `Key_1`,
					CHAR_LENGTH(`g_1`.`FirstName`) as `RowNumber`
				FROM
					`Person` `g_1`
			) `e`
		GROUP BY
			`e`.`Key_1`,
			`e`.`RowNumber`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`RowNumber_1` DESC

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

