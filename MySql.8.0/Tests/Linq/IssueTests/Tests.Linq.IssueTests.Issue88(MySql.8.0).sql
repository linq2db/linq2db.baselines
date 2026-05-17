-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = 1 AND `t1`.`Gender` = 'M'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = 1 AND 'M' = `t1`.`Gender`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @gender String -- StringFixedLength
SET     @gender = 'M'

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = 1 AND `t1`.`Gender` = @gender

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @gender String -- StringFixedLength
SET     @gender = 'M'

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = 1 AND @gender = `t1`.`Gender`

