BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` + 100 IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	)

