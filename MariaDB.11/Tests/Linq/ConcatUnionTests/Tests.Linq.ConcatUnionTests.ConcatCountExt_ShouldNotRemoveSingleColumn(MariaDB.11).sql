BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(`t3`.`PersonID`)
FROM
	(
		SELECT
			`t1`.`PersonID`
		FROM
			`Person` `t1`
		UNION ALL
		SELECT
			`t2`.`ParentID` as `PersonID`
		FROM
			`Parent` `t2`
	) `t3`

