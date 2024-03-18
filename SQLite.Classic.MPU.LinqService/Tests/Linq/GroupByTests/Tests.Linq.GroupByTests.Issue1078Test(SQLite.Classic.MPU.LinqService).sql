﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1078Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1078Table]
(
	[UserID] INTEGER NOT NULL,
	[SiteID] INTEGER NOT NULL,
	[Active] Bit     NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY ([UserID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1078Table]

