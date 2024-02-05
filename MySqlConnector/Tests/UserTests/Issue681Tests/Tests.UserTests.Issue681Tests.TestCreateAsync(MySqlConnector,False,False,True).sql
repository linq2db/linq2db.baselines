BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TABLE `Issue681Table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

