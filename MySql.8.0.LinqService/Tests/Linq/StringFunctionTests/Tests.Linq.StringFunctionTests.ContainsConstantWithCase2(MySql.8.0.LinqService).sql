﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Joh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Joh', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

