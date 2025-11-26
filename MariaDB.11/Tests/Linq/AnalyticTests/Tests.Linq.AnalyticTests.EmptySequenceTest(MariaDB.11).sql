-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Key_1`,
	`d_1`.`Children`
FROM
	(
		SELECT DISTINCT
			`c_1`.`ParentID`
		FROM
			`Parent` `c_1`
	) `m_1`
		INNER JOIN (
			SELECT
				`d`.`ParentID` as `Key_1`,
				GROUP_CONCAT(CAST(`d`.`ChildID` AS CHAR(11)) SEPARATOR ', ') as `Children`
			FROM
				`Child` `d`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`Key_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`

