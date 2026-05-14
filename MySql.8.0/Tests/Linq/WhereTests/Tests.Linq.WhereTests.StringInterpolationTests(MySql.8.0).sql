-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Person` `t1`

