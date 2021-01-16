BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1799Table1`
(
	`EventUser` INT      NOT NULL,
	`ProcessID` INT      NOT NULL,
	`EventTime` DATETIME NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1799Table2`
(
	`UserId`     INT          NOT NULL,
	`UserGroups` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1799Table3`
(
	`ProcessID`   INT          NOT NULL,
	`ProcessName` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1799Table3`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1799Table2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1799Table1`

