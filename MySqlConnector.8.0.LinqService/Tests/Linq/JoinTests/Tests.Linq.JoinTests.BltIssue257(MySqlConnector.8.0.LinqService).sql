BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`b_1`.`Date_1`,
	COUNT(*)
FROM
	(
		SELECT
			Date(`b`.`DateTimeValue`) as `Date_1`
		FROM
			`LinqDataTypes` `b`
				INNER JOIN `Parent` `p` ON `b`.`ID` = `p`.`ParentID`
	) `b_1`
GROUP BY
	`b_1`.`Date_1`

