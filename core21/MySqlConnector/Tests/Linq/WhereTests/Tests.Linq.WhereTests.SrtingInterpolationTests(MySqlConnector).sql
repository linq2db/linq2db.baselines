BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = Concat(`p`.`LastName`, Concat(', ', `p`.`FirstName`)) AND
	Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, Concat(', ', `p`.`FirstName`), '>') AND
	Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') AND
	Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}', '>') = Concat('<{p.LastName}, ', `p`.`FirstName`, Concat(' {', `p`.`LastName`), '}>') AND
	Concat('{}', `p`.`LastName`) = Concat('{}', `p`.`LastName`)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `t1`

