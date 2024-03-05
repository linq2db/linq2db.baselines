﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NULL)
	CREATE TABLE [Issue1078Table]
	(
		[UserID] Int NOT NULL,
		[SiteID] Int NOT NULL,
		[Active] Bit NOT NULL,

		CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[grp].[SiteID],
	Count(*),
	Count(CASE
		WHEN CASE
			WHEN [grp].[Active] = 1 THEN 1
			ELSE 0
		END = 0
			THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

