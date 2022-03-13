BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`Issue3360Table` `p`
	UNION ALL
	SELECT
		`p_1`.`Id`,
		'Str'
	FROM
		`cte` `p_1`
			INNER JOIN `Issue3360Table` `r` ON `p_1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`cte` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

