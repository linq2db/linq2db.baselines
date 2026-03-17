-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	`nm`.`MiddleName` IS NOT NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

