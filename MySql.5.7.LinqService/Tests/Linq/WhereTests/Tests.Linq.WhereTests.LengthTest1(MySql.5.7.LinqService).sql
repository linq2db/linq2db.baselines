BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	CHAR_LENGTH(`nm`.`MiddleName`) <> 0 OR `nm`.`MiddleName` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

