-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @male String(1) -- StringFixedLength
SET     @male = 'M'
DECLARE @female String(1) -- StringFixedLength
SET     @female = 'F'
DECLARE @gender String(1) -- StringFixedLength
SET     @gender = 'F'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN `p`.`PersonID` > 2 THEN @male
		ELSE @female
	END = @gender

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

