BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table3`
(
	`ProcessID`   INT           NOT NULL,
	`ProcessName` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ProcessID Int32
SET     @ProcessID = 3
DECLARE @ProcessName VarChar(5) -- String
SET     @ProcessName = 'Three'

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ProcessID Int32
SET     @ProcessID = 4
DECLARE @ProcessName VarChar(4) -- String
SET     @ProcessName = 'Four'

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	LEAD(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	LEAD(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	LAG(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	LAG(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table3`

