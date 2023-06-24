BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `IsNullOrEmptyTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(1,'   '),
(2,'')

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`IsNullOrEmptyTable` `p`
WHERE
	(`p`.`Value` IS NULL OR Char_Length(`p`.`Value`) = 0)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

