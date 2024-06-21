﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3360NullInAnchor`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue3360NullInAnchor`
(
	`Id`    INT         NOT NULL,
	`Guid`  CHAR(36)        NULL,
	`Enum1` VARCHAR(50)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH RECURSIVE `cte` (`Id`, `Enum1`)
AS
(
	SELECT
		`p`.`Id`,
		NULL
	FROM
		`Issue3360NullInAnchor` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		'THIS_IS_ONE'
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360NullInAnchor` `r` ON `t1`.`Id` = `r`.`Id` + 100
)
SELECT
	`t2`.`Id`,
	`t2`.`Enum1`
FROM
	`cte` `t2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3360NullInAnchor`

