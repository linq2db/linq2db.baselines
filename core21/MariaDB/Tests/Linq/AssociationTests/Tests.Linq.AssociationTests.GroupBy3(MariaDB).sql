BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Extract(year from `a_Types`.`DateTimeValue`)
FROM
	`Parent` `selectParam`
		LEFT JOIN `LinqDataTypes` `a_Types` ON `selectParam`.`ParentID` = `a_Types`.`ID`
GROUP BY
	Extract(year from `a_Types`.`DateTimeValue`)

