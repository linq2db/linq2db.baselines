-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						AVG(`a_Children`.`ParentID`)
					FROM
						`Child` `a_Children`
					WHERE
						`g_1`.`ParentID` = `a_Children`.`ParentID`
				) > 3
					THEN 1
				ELSE 0
			END as `Key_1`
		FROM
			`Parent` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`
ORDER BY
	`g_2`.`Key_1`

