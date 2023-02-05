BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ValueItem`
(
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `ValueItem`
(
	`Value`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`row_1`.`Value`
FROM
	`ValueItem` `row_1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

