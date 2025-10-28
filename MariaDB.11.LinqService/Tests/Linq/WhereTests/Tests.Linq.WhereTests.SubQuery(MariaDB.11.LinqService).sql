BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	(`t`.`ParentID` * 1000) / 1000
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` * 1000 > 2000

