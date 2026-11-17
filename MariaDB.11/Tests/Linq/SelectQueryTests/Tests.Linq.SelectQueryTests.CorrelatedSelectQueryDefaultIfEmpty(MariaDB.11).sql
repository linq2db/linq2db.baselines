-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN ((
			SELECT
				`c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1
		)) OR ((
			SELECT
				NOT `p`.`Value1` <=> `c_1`.`ParentID`
		))
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN ((
			SELECT
				`c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1
		)) OR ((
			SELECT
				NOT `p`.`Value1` <=> `c_1`.`ParentID`
		))
			THEN 'bad'
		ELSE NULL
	END
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`
WHERE
	`c_1`.`ParentID` = `p`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1 OR NOT `p`.`Value1` <=> `c_1`.`ParentID`
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1 OR NOT `p`.`Value1` <=> `c_1`.`ParentID`
			THEN 'bad'
		ELSE NULL
	END
FROM
	`Parent` `p`,
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = `p`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	NULL as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	'bad' as `c1`

