BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1078Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1078Table`
(
	`UserID` INT     NOT NULL,
	`SiteID` INT     NOT NULL,
	`Active` BOOLEAN NOT NULL,

	CONSTRAINT `PK_Issue1078Table` PRIMARY KEY CLUSTERED (`UserID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 1
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 2
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 3
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 4
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 5
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 6
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 7
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 8
DECLARE @SiteID Int32
SET     @SiteID = 3
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @UserID Int32
SET     @UserID = 9
DECLARE @SiteID Int32
SET     @SiteID = 4
DECLARE @Active UByte -- Boolean
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1078Table`

