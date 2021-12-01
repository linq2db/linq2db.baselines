BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Issue3360NullInAnchor`
(
	`Id`    INT         NOT NULL,
	`Guid`  CHAR(36)        NULL,
	`Enum1` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
		`p_1`.`Id`,
		'THIS_IS_ONE'
	FROM
		`cte` `p_1`
			INNER JOIN `Issue3360NullInAnchor` `r` ON `p_1`.`Id` = `r`.`Id` + 100
)
SELECT
	`t1`.`Id`,
	`t1`.`Enum1`
FROM
	`cte` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360NullInAnchor`

