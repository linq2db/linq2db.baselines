BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1799Table1`
(
	`EventUser` INT      NOT NULL,
	`ProcessID` INT      NOT NULL,
	`EventTime` DATETIME NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1799Table2`
(
	`UserId`     INT           NOT NULL,
	`UserGroups` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1799Table3`
(
	`ProcessID`   INT           NOT NULL,
	`ProcessName` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 10

SELECT
	`g_1`.`User_1`,
	`p`.`ProcessName`,
	`u`.`UserGroups`,
	SUM(`g_1`.`Diff`) / 60
FROM
	(
		SELECT
			`x`.`EventUser` as `User_1`,
			`x`.`ProcessID` as `Proc`,
			TIMESTAMPDIFF(minute, LAG(`x`.`EventTime`) OVER(PARTITION BY `x`.`EventUser`, `x`.`ProcessID` ORDER BY `x`.`EventTime`), `x`.`EventTime`) as `Diff`
		FROM
			`Issue1799Table1` `x`
	) `g_1`
		INNER JOIN `Issue1799Table2` `u` ON `u`.`UserId` = `g_1`.`User_1`
		INNER JOIN `Issue1799Table3` `p` ON `p`.`ProcessID` = `g_1`.`Proc`
GROUP BY
	`g_1`.`User_1`,
	`u`.`UserGroups`,
	`p`.`ProcessName`
LIMIT @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table3`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1799Table1`

