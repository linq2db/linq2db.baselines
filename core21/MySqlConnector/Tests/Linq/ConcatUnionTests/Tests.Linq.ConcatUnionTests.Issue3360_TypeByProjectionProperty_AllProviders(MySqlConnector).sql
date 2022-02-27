BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`Id`,
	'str1'
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	'str2'
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`Id`,
	'str2'
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	'str1'
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

