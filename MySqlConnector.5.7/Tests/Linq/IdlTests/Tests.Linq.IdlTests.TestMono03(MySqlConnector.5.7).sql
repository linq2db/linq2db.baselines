﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p1 VarChar(1) -- String
SET     @p1 = 'A'
DECLARE @Value Int32
SET     @Value = 1

SELECT
	`x`.`FirstName`
FROM
	`Person` `x`
UNION ALL
SELECT
	`x_1`.`FirstName`
FROM
	`Person` `x_1`,
	`Patient` `z`
WHERE
	`x_1`.`FirstName` = @p1 OR `z`.`PersonID` = @Value

