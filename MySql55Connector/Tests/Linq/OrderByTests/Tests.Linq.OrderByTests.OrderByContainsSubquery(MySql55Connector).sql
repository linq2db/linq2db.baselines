﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`PersonID`,
	`_`.`LastName`
FROM
	`Person` `_`
ORDER BY
	CASE
		WHEN `_`.`PersonID` IN (1, 3)
			THEN 1
		ELSE 0
	END

