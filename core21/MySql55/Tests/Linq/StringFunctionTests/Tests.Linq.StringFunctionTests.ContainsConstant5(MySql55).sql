﻿BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('[', '123[456') > 0

