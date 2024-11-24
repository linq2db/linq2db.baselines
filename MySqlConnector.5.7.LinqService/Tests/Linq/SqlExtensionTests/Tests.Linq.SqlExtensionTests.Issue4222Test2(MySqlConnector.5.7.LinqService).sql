BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Entry`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Entry`
(
	`Id`     CHAR(36)      NOT NULL,
	`RecSrc` VARCHAR(4000)     NULL,
	`Value`  INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`Id`,
	`e`.`RecSrc`,
	`e`.`Value`
FROM
	`Entry` `e`
WHERE
	(`e`.`RecSrc`, `e`.`Value`) IN (('default', 2007), ('other', 2008))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Entry`

