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
DECLARE @ProcessID Int32
SET     @ProcessID = 1
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO `Issue1799Table3`
(
	`ProcessID`,
	`ProcessName`
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ProcessID Int32
SET     @ProcessID = 2
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO `Issue1799Table3`
(
	`ProcessID`,
	`ProcessName`
)
VALUES
(
	@ProcessID,
	@ProcessName
)

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

