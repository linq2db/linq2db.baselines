BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360NullInAnchor`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3360NullInAnchor`
(
	`Id`    INT         NOT NULL,
	`Guid`  CHAR(36)        NULL,
	`Enum1` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `cte` (`Id`, `Guid`)
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
		`r`.`Guid`
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360NullInAnchor` `r` ON `t1`.`Id` = `r`.`Id` + 100
)
SELECT
	`t2`.`Id`,
	`t2`.`Guid`
FROM
	`cte` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360NullInAnchor`

