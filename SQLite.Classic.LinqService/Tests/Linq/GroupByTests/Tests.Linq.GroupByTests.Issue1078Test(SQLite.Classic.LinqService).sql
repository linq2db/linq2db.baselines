BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1078Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1078Table]
(
	[UserID] INTEGER NOT NULL,
	[SiteID] INTEGER NOT NULL,
	[Active] Bit     NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY ([UserID])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN NOT [grp].[Active] THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1078Table]

