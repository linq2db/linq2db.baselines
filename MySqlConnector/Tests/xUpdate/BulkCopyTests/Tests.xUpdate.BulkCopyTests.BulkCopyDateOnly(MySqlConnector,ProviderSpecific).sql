BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Date` DATE NOT NULL
)

BeforeExecute
INSERT BULK `DateOnlyTable`(Date

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

