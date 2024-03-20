BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue680Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue680Table`
(
	`TimeStamp` DATETIME NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	COUNT(CASE
		WHEN `g_1`.`TimeStamp` > @DateTime THEN 1
		ELSE NULL
	END)
FROM
	`Issue680Table` `g_1`
GROUP BY
	`g_1`.`TimeStamp`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue680Table`

