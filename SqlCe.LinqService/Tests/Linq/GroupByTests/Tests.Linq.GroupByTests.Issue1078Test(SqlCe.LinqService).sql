BeforeExecute
-- SqlCe

DROP TABLE [Issue1078Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1078Table]
(
	[UserID] Int NOT NULL,
	[SiteID] Int NOT NULL,
	[Active] Bit NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY ([UserID])
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 1
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = 1

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 2
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = 0

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 3
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = 1

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 4
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = 0

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 5
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = 1

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 6
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = 0

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 7
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = 0

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 8
DECLARE @SiteID Int -- Int32
SET     @SiteID = 3
DECLARE @Active Bit -- Boolean
SET     @Active = 0

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe
DECLARE @UserID Int -- Int32
SET     @UserID = 9
DECLARE @SiteID Int -- Int32
SET     @SiteID = 4
DECLARE @Active Bit -- Boolean
SET     @Active = 1

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- SqlCe

SELECT
	[grp].[SiteID] as [Key_1],
	COUNT(*) as [COUNT_1],
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END) as [COUNT_2]
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1078Table]

