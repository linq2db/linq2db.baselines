﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	CASE
		WHEN (`p`.`FirstName` IS NULL OR Char_Length(`p`.`FirstName`) = 0)
			THEN 1
		ELSE 0
	END
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

