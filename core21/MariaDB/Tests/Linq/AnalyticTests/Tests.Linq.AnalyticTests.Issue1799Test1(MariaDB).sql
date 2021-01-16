BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1799Table1`
(
	`EventUser` INT      NOT NULL,
	`ProcessID` INT      NOT NULL,
	`EventTime` DATETIME NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1799Table2`
(
	`UserId`     INT          NOT NULL,
	`UserGroups` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1799Table3`
(
	`ProcessID`   INT          NOT NULL,
	`ProcessName` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table3`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table2`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table1`

