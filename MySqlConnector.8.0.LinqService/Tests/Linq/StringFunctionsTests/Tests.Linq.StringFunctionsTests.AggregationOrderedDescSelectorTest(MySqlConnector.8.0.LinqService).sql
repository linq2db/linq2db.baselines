﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(`g_1`.`Value1` ORDER BY `g_1`.`Value3` DESC, `g_1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value1`

