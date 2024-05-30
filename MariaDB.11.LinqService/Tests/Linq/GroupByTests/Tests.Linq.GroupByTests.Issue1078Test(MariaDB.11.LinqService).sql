BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1078Table`

