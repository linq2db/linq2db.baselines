BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser3]
(
	[UserId]               INTEGER NOT NULL,
	[BelongsToCurrentUser] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [EntityWithUser3]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(1,0),
(2,0),
(2,0),
(3,0),
(3,0),
(3,0)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 3

SELECT
	COUNT(*)
FROM
	[EntityWithUser3] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser3]

