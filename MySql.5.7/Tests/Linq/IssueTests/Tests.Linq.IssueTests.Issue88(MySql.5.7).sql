BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

