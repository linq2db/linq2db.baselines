-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	(CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) = (CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) AND
	(CONCAT('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>')) = (CONCAT('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>')) AND
	(CONCAT('<', `p`.`LastName`, `p`.`FirstName`, '>')) = (CONCAT('<', `p`.`LastName`, `p`.`FirstName`, '>')) AND
	(CONCAT('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>')) = (CONCAT('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>')) AND
	(CONCAT('{}', `p`.`LastName`)) = (CONCAT('{}', `p`.`LastName`))

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `t1`

