﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

