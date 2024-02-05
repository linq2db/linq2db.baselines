BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT           NOT NULL,
	`FactId` INT           NOT NULL,
	`Name`   VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`fact_1`.`Id`,
	`tag_1`.`Id`,
	`tag_1`.`FactId`,
	`tag_1`.`Name`
FROM
	`Fact` `fact_1`
		LEFT JOIN `Tag` `tag_1` ON `tag_1`.`FactId` = `fact_1`.`Id`
WHERE
	`fact_1`.`Id` > 3
ORDER BY
	`fact_1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

