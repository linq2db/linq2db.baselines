BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Date` DATE NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT @take

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

