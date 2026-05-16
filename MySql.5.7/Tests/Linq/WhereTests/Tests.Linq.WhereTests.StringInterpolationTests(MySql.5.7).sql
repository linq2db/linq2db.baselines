-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `t1`

