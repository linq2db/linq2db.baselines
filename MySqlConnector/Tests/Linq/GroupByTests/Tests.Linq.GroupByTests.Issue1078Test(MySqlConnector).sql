BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	`grp`.`SiteID`,
	COUNT(*),
	COUNT(CASE
		WHEN CASE
			WHEN `grp`.`Active` = 1 THEN 1
			ELSE 0
		END = 0
			THEN 1
		ELSE NULL
	END)
FROM
	`Issue1078Table` `grp`
GROUP BY
	`grp`.`SiteID`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

