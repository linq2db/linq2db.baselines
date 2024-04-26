BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = Concat(`p`.`LastName`, ', ', `p`.`FirstName`) AND
	Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, ', ', `p`.`FirstName`, '>') AND
	Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') = Concat('<', `p`.`LastName`, `p`.`FirstName`, '>') AND
	Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') = Concat('<{p.LastName}, ', `p`.`FirstName`, ' {', `p`.`LastName`, '}>') AND
	Concat('{}', `p`.`LastName`) = Concat('{}', `p`.`LastName`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Count(*)
FROM
	`Person` `t1`

