BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p VarChar(4) -- String
SET     @p = 'John'
DECLARE @take Int32
SET     @take = 2

SELECT
	`t`.`FirstName`,
	`t`.`PersonID`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`FirstName` = @p
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'
DECLARE @take Int32
SET     @take = 2

SELECT
	`t`.`FirstName`,
	`t`.`PersonID`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`FirstName` = @p
LIMIT @take

