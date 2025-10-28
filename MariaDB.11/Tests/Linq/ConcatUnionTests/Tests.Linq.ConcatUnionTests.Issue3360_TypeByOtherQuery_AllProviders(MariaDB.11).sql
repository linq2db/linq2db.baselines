BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`Id`,
	`p`.`Str`
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str' AS CHAR(255))
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`Id`,
	CAST('str' AS CHAR(255))
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	`p_1`.`Str`
FROM
	`Issue3360Table` `p_1`

