-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

