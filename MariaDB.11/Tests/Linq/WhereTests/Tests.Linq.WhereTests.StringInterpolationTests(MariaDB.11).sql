-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `t1`

