﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '0123451234')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (11 - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6)))) - Char_Length('123') = 7 AND
	Locate('123', Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) <> 0

