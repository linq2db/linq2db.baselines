﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`Id`,
	GROUP_CONCAT(`g_1`.`Value1` SEPARATOR ', ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`

