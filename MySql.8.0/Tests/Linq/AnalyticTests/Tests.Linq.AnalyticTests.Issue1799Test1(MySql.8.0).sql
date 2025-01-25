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
			TIMESTAMPDIFF(minute, LAG(`q`.`EventTime`) OVER(PARTITION BY `q`.`EventUser`, `q`.`ProcessID` ORDER BY `q`.`EventTime`), `q`.`EventTime`) as `Diff`,
			`q`.`EventUser` as `User_1`,
			`q`.`ProcessID` as `Proc`
		FROM
			`Issue1799Table1` `q`
	) `g_1`
		INNER JOIN `Issue1799Table2` `u` ON `u`.`UserId` = `g_1`.`User_1`
		INNER JOIN `Issue1799Table3` `p` ON `p`.`ProcessID` = `g_1`.`Proc`
WHERE
	`g_1`.`Diff` > 0 AND `g_1`.`Diff` <= 5
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

