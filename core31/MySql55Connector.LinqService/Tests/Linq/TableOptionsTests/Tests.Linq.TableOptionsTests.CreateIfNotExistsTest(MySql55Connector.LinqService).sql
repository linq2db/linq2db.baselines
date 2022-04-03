BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `CreateIfNotExistsTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	2
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`CreateIfNotExistsTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

