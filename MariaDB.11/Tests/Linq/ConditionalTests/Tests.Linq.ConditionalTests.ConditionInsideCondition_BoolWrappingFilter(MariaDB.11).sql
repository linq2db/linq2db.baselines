-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN `s`.`ParentID` % 2 = 0 THEN `s`.`ParentID` % 3 = 0
		WHEN `s`.`ParentID` % 4 = 0 THEN `s`.`ParentID` > 0
		ELSE `s`.`ParentID` < 5
	END
FROM
	`Parent` `s`
WHERE
	CASE
		WHEN `s`.`ParentID` % 2 = 0 THEN `s`.`ParentID` % 3 = 0
		WHEN `s`.`ParentID` % 4 = 0 THEN `s`.`ParentID` > 0
		ELSE `s`.`ParentID` < 5
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

