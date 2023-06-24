BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `IsNullOrEmptyTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(1,'   '),
(2,'')

BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`IsNullOrEmptyTable` `p`
WHERE
	Char_Length(`p`.`Value`) = 3

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

