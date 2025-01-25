﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @separator VarChar(4) -- String
SET     @separator = ' -> '

SELECT
	GROUP_CONCAT(`g_1`.`Value4` ORDER BY `g_1`.`Value3` DESC, `g_1`.`Value4` SEPARATOR @separator)
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value4`

