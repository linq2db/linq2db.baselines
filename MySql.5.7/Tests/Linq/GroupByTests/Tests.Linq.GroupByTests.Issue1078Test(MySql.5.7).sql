BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(1,1,1),
(2,1,0),
(3,1,1),
(4,2,0),
(5,2,1),
(6,2,0),
(7,2,0),
(8,3,0),
(9,4,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`grp`.`SiteID`,
	COUNT(*),
	COUNT(CASE
		WHEN `grp`.`Active` = 0 THEN 1
		ELSE NULL
	END)
FROM
	`Issue1078Table` `grp`
GROUP BY
	`grp`.`SiteID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1078Table`

