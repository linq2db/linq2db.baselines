BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Value` INT NOT NULL,
	`Id`    INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BaseTable`
(
	`Value`,
	`Id`
)
VALUES
(100,1)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

