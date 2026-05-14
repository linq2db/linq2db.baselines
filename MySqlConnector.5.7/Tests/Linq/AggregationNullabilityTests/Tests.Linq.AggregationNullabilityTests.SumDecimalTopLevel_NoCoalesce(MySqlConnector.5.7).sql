-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	SUM(`i`.`DecimalValue`)
FROM
	`Inner` `i`
WHERE
	`i`.`Group` = 1

