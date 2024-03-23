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
-- MySqlConnector MySql
DECLARE @Date Datetime -- DateTime
SET     @Date = '2021-01-01'

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
(
	@Date
)

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

