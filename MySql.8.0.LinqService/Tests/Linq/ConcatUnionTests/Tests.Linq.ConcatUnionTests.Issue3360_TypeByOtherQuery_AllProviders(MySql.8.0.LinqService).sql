BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3360Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3360Table`

