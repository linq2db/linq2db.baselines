BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1279Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1279Table`
(
	`Id`      INT  AUTO_INCREMENT NOT NULL,
	`CharFld` CHAR                NOT NULL,

	CONSTRAINT `PK_Issue1279Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @CharFld String -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO `Issue1279Table`
(
	`CharFld`
)
VALUES
(
	@CharFld
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`Issue1279Table` `t1`
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1279Table`

