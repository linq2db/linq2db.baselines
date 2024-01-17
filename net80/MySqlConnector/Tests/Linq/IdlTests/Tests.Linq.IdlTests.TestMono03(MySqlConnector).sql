BeforeExecute
-- MySqlConnector MySql
DECLARE @p1 VarChar(1) -- String
SET     @p1 = 'A'
DECLARE @p2 Int32
SET     @p2 = 1

SELECT
	`y`.`FirstName`
FROM
	`Person` `y`
UNION ALL
SELECT
	`t1`.`Name`
FROM
	(
		SELECT
			`x`.`FirstName` as `Name`
		FROM
			`Person` `x`,
			`Patient` `z`
		WHERE
			(`x`.`FirstName` = @p1 OR `z`.`PersonID` = @p2)
	) `t1`

