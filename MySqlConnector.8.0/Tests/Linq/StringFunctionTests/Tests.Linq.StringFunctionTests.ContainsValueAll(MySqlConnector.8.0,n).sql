﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', '123n456') > 0

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('n', '123n456') <= 0

