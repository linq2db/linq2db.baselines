-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @gender Int32
SET     @gender = 1

SELECT
	`p`.`PersonID`,
	@gender
FROM
	`Person` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

