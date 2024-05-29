BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1107TB`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue1107TB`
(
	`Id`       INT      NOT NULL,
	`TestDate` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1107TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue1107TB`
(
	`Id`,
	`TestDate`
)
VALUES
(0,'2018-01-01')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1107TB`

