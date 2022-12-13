BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table1`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table1`
(
	`EventUser` INT      NOT NULL,
	`ProcessID` INT      NOT NULL,
	`EventTime` DATETIME NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table2`
(
	`UserId`     INT           NOT NULL,
	`UserGroups` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue1799Table3`
(
	`ProcessID`   INT           NOT NULL,
	`ProcessName` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
			`x`.`EventUser` as `User_1`,
			`u`.`UserGroups`,
			`p`.`ProcessName`,
			TIMESTAMPDIFF(minute, LAG(`x`.`EventTime`) OVER(PARTITION BY `x`.`EventUser`, `x`.`ProcessID` ORDER BY `x`.`EventTime`), `x`.`EventTime`) as `Diff`
		FROM
			`Issue1799Table1` `x`
				INNER JOIN `Issue1799Table2` `u` ON `u`.`UserId` = `x`.`EventUser`
				INNER JOIN `Issue1799Table3` `p` ON `p`.`ProcessID` = `x`.`ProcessID`
	) `t1`
GROUP BY
	`t1`.`User_1`,
	`t1`.`UserGroups`,
	`t1`.`ProcessName`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue1799Table1`

