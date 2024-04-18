﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 1
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Bool -- Boolean
SET     @Active = 1

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 2
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Bool -- Boolean
SET     @Active = 0

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 3
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Bool -- Boolean
SET     @Active = 1

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 4
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Bool -- Boolean
SET     @Active = 0

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 5
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Bool -- Boolean
SET     @Active = 1

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 6
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Bool -- Boolean
SET     @Active = 0

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 7
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Bool -- Boolean
SET     @Active = 0

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 8
DECLARE @SiteID Int32
SET     @SiteID = 3
DECLARE @Active Bool -- Boolean
SET     @Active = 0

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @UserID Int32
SET     @UserID = 9
DECLARE @SiteID Int32
SET     @SiteID = 4
DECLARE @Active Bool -- Boolean
SET     @Active = 1

INSERT INTO `Issue1078Table`
(
	`UserID`,
	`SiteID`,
	`Active`
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1078Table`

