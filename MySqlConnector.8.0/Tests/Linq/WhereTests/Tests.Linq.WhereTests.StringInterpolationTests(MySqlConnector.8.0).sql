BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = Concat(`p`.`LastName`, ', ', `p`.`FirstName`) OR Concat(`p`.`LastName`, ', ', `p`.`FirstName`) IS NULL AND Concat(`p`.`LastName`, ', ', `p`.`FirstName`) IS NULL) AND
	(Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') OR Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') IS NULL AND Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') IS NULL) AND
	(Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') OR Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') IS NULL AND Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') IS NULL) AND
	(Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') = Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') OR Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') IS NULL AND Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') IS NULL) AND
	(Concat('{}', `p`.`LastName`) = Concat('{}', `p`.`LastName`) OR Concat('{}', `p`.`LastName`) IS NULL AND Concat('{}', `p`.`LastName`) IS NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	`Person` `t1`

