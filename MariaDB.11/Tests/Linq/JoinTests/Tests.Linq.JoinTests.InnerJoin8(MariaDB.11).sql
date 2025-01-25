BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	(
		SELECT
			`ch`.`ParentID` + `p`.`ParentID` as `ID`
		FROM
			`Child` `ch`
				INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
	) `t`
WHERE
	`t`.`ID` > 2

