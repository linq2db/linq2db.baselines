BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

