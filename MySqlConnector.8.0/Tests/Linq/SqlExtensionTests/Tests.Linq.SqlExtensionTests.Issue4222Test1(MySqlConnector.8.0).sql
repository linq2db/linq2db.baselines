BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Entry`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Entry`
(
	`Id`     CHAR(36)      NOT NULL,
	`RecSrc` VARCHAR(4000)     NULL,
	`Value`  INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`Id`,
	`e`.`RecSrc`,
	`e`.`Value`
FROM
	`Entry` `e`
WHERE
	(`e`.`RecSrc`, `e`.`Value`) = ('default', 2007)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Entry`

