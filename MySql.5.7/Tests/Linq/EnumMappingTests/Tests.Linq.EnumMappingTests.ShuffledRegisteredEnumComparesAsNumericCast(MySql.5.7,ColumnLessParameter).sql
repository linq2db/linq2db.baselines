-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value String(1) -- StringFixedLength
SET     @value = 'M'

SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN `p`.`PersonID` > 2 THEN 'M'
		ELSE 'F'
	END = @value

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

