-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`,
	`Person` `p2`
WHERE
	`t1`.`PersonID` = `p2`.`PersonID` AND `t1`.`FirstName` LIKE Replace(`p2`.`FirstName`, '%', '~%') ESCAPE '~'

