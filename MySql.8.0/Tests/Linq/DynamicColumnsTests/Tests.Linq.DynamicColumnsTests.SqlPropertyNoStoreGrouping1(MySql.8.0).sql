-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`FirstName`,
	COUNT(*)
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`FirstName`
ORDER BY
	`g_1`.`FirstName`

