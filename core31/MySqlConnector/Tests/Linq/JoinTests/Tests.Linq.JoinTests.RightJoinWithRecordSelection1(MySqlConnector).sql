BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT          NOT NULL,
	`FactId` INT          NOT NULL,
	`Name`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

