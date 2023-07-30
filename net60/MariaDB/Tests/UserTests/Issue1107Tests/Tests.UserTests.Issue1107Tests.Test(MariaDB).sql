BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1107TB`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1107TB`
(
	`Id`       INT      NOT NULL,
	`TestDate` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1107TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Issue1107TB`
(
	`Id`,
	`TestDate`
)
VALUES
(0,'2018-01-01')

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1107TB`

