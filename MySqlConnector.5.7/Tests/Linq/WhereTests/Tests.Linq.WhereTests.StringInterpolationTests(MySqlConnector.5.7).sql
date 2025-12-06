-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = Concat(`p`.`LastName`, ', ', `p`.`FirstName`) AND
	Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') AND
	Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') AND
	Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') = Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') AND
	Concat('{}', `p`.`LastName`) = Concat('{}', `p`.`LastName`)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `t1`

