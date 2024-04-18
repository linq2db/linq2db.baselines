BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`ID`,
	`_2`.`SmallIntValue`
FROM
	(
		SELECT DISTINCT
			`_`.`ID`,
			`_`.`SmallIntValue`
		FROM
			`LinqDataTypes` `_`
	) `e`
		LEFT JOIN (
			SELECT DISTINCT
				`_1`.`ID`,
				`_1`.`SmallIntValue`
			FROM
				`LinqDataTypes` `_1`
		) `_2` ON `_2`.`ID` = `e`.`ID`

