BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4460Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4460Table`
(
	`Id`      INT           NOT NULL,
	`Code`    VARCHAR(4000)     NULL,
	`Name`    VARCHAR(4000)     NULL,
	`Surname` VARCHAR(4000)     NULL
)

BeforeExecute
INSERT BULK `Issue4460Table`(Id, Code, Name, Surname

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Surname`
FROM
	`Issue4460Table` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4460Table`

