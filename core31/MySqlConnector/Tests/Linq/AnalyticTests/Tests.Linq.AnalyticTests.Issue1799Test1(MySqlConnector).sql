﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table1`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table1`
(
	`EventUser` INT      NOT NULL,
	`ProcessID` INT      NOT NULL,
	`EventTime` DATETIME NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table2`
(
	`UserId`     INT           NOT NULL,
	`UserGroups` VARCHAR(4000)     NULL
)

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
DECLARE @take Int32
SET     @take = 10

SELECT
	`t1`.`User_1`,
	`t1`.`ProcessName`,
	`t1`.`UserGroups`,
	Sum(`t1`.`Diff`)
FROM
	(
		SELECT
			`q_1`.`User_1`,
			`u`.`UserGroups`,
			`p`.`ProcessName`,
			`q_1`.`Diff`
		FROM
			(
				SELECT
					`q`.`User_1`,
					`q`.`Proc`,
					`q`.`Diff`
				FROM
					(
						SELECT
							TIMESTAMPDIFF(minute, LAG(`x`.`EventTime`) OVER(PARTITION BY `x`.`EventUser`, `x`.`ProcessID` ORDER BY `x`.`EventTime`), `x`.`EventTime`) as `Diff`,
							`x`.`EventUser` as `User_1`,
							`x`.`ProcessID` as `Proc`
						FROM
							`Issue1799Table1` `x`
					) `q`
				WHERE
					`q`.`Diff` > 0 AND `q`.`Diff` <= 5
			) `q_1`
				INNER JOIN `Issue1799Table2` `u` ON `u`.`UserId` = `q_1`.`User_1`
				INNER JOIN `Issue1799Table3` `p` ON `p`.`ProcessID` = `q_1`.`Proc`
	) `t1`
GROUP BY
	`t1`.`User_1`,
	`t1`.`UserGroups`,
	`t1`.`ProcessName`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1799Table1`

