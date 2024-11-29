BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`gr`.`FirstName`,
	`gr`.`LastName`,
	SUM(`gr`.`PersonID`)
FROM
	`Person` `gr`
GROUP BY
	`gr`.`FirstName`,
	`gr`.`LastName`

