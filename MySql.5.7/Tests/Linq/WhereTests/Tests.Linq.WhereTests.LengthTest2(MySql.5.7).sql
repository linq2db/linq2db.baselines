-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`nm`.`FirstName`
FROM
	`Person` `nm`
WHERE
	CHAR_LENGTH(`nm`.`FirstName`) <> 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

