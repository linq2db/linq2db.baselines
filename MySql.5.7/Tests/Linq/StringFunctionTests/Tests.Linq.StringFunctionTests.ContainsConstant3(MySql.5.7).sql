﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IN ('oh', 'oh''', 'oh\\')

