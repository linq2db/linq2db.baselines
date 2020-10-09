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
DECLARE @take Int32
SET     @take = 10

SELECT 
	`q`.`User_1`, 
	`p`.`ProcessName`, 
	`u`.`UserGroups`, 
	Sum(`q`.`Diff`)
FROM
	( 
		SELECT 
			`x`.`EventUser` as `User_1`, 
			`x`.`ProcessID` as `Proc`, 
			TIMESTAMPDIFF(minute, LAG(`x`.`EventTime`) OVER(PARTITION BY `x`.`EventUser`, `x`.`ProcessID` ORDER BY `x`.`EventTime`), `x`.`EventTime`) as `Diff`
		FROM
			`Issue1799Table1` `x`
	) `q`
		INNER JOIN `Issue1799Table2` `u` ON `u`.`UserId` = `q`.`User_1`
		INNER JOIN `Issue1799Table3` `p` ON `p`.`ProcessID` = `q`.`Proc`
GROUP BY
	`q`.`User_1`,
	`u`.`UserGroups`,
	`p`.`ProcessName`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table3`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table2`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1799Table1`

