BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NULL)
	CREATE TABLE [Issue1078Table]
	(
		[UserID] Int NOT NULL,
		[SiteID] Int NOT NULL,
		[Active] Bit NOT NULL,

		CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
	)

BeforeExecute
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014
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
-- SqlServer.2014

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF([grp].[Active] = 0, 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

