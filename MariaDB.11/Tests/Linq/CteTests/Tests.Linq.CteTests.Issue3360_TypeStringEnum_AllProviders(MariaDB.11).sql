BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360WithEnum`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3360WithEnum`
(
	`Id`  INT         NOT NULL,
	`Str` VARCHAR(50) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`Issue3360WithEnum` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('THIS_IS_TWO' AS CHAR(50))
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360WithEnum` `r` ON `t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360WithEnum`

