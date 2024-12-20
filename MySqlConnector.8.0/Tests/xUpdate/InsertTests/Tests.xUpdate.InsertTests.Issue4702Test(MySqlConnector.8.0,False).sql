BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4702Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4702Table`
(
	`Id`   INT           AUTO_INCREMENT NOT NULL,
	`Text` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue4702Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT Max(`Id`) FROM `Issue4702Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4702Table`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4702Table`
(
	`Text`
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4702Table`

