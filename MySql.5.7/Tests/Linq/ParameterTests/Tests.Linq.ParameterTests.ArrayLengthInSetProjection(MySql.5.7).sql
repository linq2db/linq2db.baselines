-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @arr Int32
SET     @arr = 2

SELECT
	`p`.`PersonID`,
	CAST(@arr AS SIGNED)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
UNION ALL
SELECT
	`p_1`.`PersonID`,
	CAST(0 AS SIGNED)
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` = 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

