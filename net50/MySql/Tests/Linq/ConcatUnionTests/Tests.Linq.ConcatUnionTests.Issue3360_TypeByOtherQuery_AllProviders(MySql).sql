BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`Id`,
	`p`.`Str`
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	'str'
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`Id`,
	'str'
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	`p_1`.`Str`
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3360Table`

