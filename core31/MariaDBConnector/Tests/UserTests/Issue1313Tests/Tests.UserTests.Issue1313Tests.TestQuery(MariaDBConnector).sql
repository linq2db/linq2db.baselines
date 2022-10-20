BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ValueItem`
(
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `ValueItem`
(
	`Value`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`row_1`.`Value`
FROM
	`ValueItem` `row_1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

