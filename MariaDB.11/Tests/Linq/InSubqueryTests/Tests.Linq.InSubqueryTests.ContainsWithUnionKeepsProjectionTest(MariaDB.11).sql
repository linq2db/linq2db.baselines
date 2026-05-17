-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					`p_1`.`ParentID`
				FROM
					`Parent` `p_1`
				WHERE
					`p_1`.`ParentID` <= 2
				UNION
				SELECT
					`c_1`.`ParentID`
				FROM
					`Child` `c_1`
				WHERE
					`c_1`.`ParentID` >= 3
			) `t1`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID`
	)
ORDER BY
	`p`.`ParentID`

