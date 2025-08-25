BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`g_1`.`FirstName`,
	`g_1`.`LastName`,
	COUNT(*)
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`FirstName`,
	`g_1`.`LastName`
ORDER BY
	`g_1`.`FirstName`

