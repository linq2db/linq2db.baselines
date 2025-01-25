BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1078Table') IS NOT NULL)
	DROP TABLE [Issue1078Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1078Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1078Table]
		(
			[UserID] Int NOT NULL,
			[SiteID] Int NOT NULL,
			[Active] Bit NOT NULL,

			CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @UserID Integer -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1078Table') IS NOT NULL)
	DROP TABLE [Issue1078Table]

