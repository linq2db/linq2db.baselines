BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table3`
(
	`ProcessID`   INT           NOT NULL,
	`ProcessName` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue1799Table3`
(
	`ProcessID`,
	`ProcessName`
)
VALUES
(1,'One'),
(2,'Two')

BeforeExecute
-- MySqlConnector MySql

SELECT
	LEAD(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MySqlConnector MySql

SELECT
	LAG(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table3`

