BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Count(*)
FROM
	`Person` `t1`

