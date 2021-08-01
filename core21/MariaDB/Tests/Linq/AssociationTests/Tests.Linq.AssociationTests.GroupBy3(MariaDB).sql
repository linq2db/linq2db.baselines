BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `a_Types`.`DateTimeValue`) as `Key_1`
		FROM
			`Parent` `selectParam`
				LEFT JOIN `LinqDataTypes` `a_Types` ON `selectParam`.`ParentID` = `a_Types`.`ID`
	) `t1`
GROUP BY
	`t1`.`Key_1`

