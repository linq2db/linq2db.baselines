BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Date` DATE NOT NULL
)

BeforeExecute
INSERT BULK `DateOnlyTable`(Date

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

