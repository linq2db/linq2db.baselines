-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	SUM(`p`.`Value1`) OVER (ORDER BY `p`.`Value1`)
FROM
	`Parent` `p`

