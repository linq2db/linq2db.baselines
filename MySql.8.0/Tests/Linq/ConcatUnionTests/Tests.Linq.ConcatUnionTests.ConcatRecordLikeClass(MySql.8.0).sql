﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
UNION ALL
SELECT
	`p_1`.`PersonID`,
	`p_1`.`FirstName`,
	`p_1`.`LastName`
FROM
	`Person` `p_1`

