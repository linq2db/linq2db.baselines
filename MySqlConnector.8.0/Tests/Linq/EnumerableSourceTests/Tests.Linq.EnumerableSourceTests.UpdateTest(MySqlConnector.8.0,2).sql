﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`, 'Janet Updated' AS `Value`
			UNION ALL
			SELECT 4, 'Doe Updated') `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

