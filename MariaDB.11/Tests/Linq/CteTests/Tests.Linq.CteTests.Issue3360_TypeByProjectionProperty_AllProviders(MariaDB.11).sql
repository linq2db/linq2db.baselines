BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		CAST('Str1' AS CHAR(255))
	FROM
		`Issue3360Table` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('Str2' AS CHAR(255))
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360Table` `r` ON `t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

