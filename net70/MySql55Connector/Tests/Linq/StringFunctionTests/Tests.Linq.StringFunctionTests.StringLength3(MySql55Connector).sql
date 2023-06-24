BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `IsNullOrEmptyTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(1,'x   '),
(2,'xxxx ')

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`IsNullOrEmptyTable` `p`
WHERE
	Char_Length(`p`.`Value`) = 4

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

