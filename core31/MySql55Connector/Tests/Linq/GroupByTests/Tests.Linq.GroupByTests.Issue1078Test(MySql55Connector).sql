BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`SiteID`,
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			`Issue1078Table` `u`
		WHERE
			CASE
				WHEN `u`.`Active` = 1 THEN 1
				ELSE 0
			END = 0 AND
			`t1`.`SiteID` = `u`.`SiteID`
	)
FROM
	`Issue1078Table` `t1`
GROUP BY
	`t1`.`SiteID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

