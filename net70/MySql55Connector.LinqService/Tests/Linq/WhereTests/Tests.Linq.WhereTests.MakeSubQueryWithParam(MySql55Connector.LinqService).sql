﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @n Int32
SET     @n = 1
DECLARE @n_1 Int32
SET     @n_1 = 1

SELECT
	`p`.`PersonID` + @n,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @n_1

