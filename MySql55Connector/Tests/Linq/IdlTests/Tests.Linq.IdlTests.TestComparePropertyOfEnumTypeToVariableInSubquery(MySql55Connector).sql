﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'O'

SELECT
	`x`.`PersonID`,
	`x`.`Diagnosis`
FROM
	`Patient` `x`
		INNER JOIN `Person` `x1` ON `x`.`PersonID` = `x1`.`PersonID`
WHERE
	`x1`.`Gender` = @gender

