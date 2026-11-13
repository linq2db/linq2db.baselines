-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p String(1) -- StringFixedLength
SET     @p = 'F'

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
		WHEN `p`.`PersonID` > 2 THEN 'M'
		ELSE 'F'
	END = @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

