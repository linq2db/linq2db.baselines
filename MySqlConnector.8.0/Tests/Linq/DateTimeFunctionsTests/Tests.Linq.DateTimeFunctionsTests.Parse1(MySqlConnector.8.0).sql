BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`d`.`c1`
FROM
	(
		SELECT
			`t`.`DateTimeValue` as `c1`
		FROM
			`LinqDataTypes` `t`
	) `d`
WHERE
	Extract(day from `d`.`c1`) > 0

