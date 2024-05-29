BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue1799Table3`
(
	`ProcessID`   INT           NOT NULL,
	`ProcessName` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue1799Table3`
(
	`ProcessID`,
	`ProcessName`
)
VALUES
(1,'One'),
(2,'Two')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	LEAD(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	LAG(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1799Table3`

