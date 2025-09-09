BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT
			Extract(year from `a_Types`.`DateTimeValue`) as `Key_1`
		FROM
			`Parent` `g_1`
				LEFT JOIN `LinqDataTypes` `a_Types` ON `g_1`.`ParentID` = `a_Types`.`ID`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`

