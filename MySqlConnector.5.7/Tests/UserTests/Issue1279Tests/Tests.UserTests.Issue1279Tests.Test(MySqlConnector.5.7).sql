BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1279Table`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1279Table`
(
	`Id`      INT  AUTO_INCREMENT NOT NULL,
	`CharFld` CHAR                NOT NULL,

	CONSTRAINT `PK_Issue1279Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`Issue1279Table` `t1`
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1279Table`

