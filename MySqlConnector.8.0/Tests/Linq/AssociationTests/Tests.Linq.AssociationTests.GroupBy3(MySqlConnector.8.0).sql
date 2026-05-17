-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	Extract(year from `a_Types`.`DateTimeValue`)
FROM
	`Parent` `g_1`
		LEFT JOIN `LinqDataTypes` `a_Types` ON `g_1`.`ParentID` = `a_Types`.`ID`

