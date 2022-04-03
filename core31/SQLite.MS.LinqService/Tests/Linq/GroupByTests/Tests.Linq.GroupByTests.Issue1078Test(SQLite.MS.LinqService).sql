BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1078Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1078Table]
(
	[UserID] INTEGER NOT NULL,
	[SiteID] INTEGER NOT NULL,
	[Active] Bit     NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY ([UserID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 1
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 2
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 3
DECLARE @SiteID  -- Int32
SET     @SiteID = 1
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 4
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 5
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 6
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 7
DECLARE @SiteID  -- Int32
SET     @SiteID = 2
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 8
DECLARE @SiteID  -- Int32
SET     @SiteID = 3
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @UserID  -- Int32
SET     @UserID = 9
DECLARE @SiteID  -- Int32
SET     @SiteID = 4
DECLARE @Active  -- Boolean
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
-- SQLite.MS SQLite

SELECT
	[t1].[SiteID],
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			[Issue1078Table] [u]
		WHERE
			CASE
				WHEN [u].[Active] = 1 THEN 1
				ELSE 0
			END = 0 AND
			[t1].[SiteID] = [u].[SiteID]
	)
FROM
	[Issue1078Table] [t1]
GROUP BY
	[t1].[SiteID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1078Table]

