﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`Taxonomy`
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

