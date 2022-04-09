BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser]
(
	[UserId]                   INTEGER NOT NULL,
	[BelongsToCurrentUser]     Bit     NOT NULL,
	[BelongsToCurrentUserFail] Bit     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(1,0,0),
(2,0,0),
(2,0,0),
(3,0,0),
(3,0,0),
(3,0,0)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 2

SELECT
	Count(*)
FROM
	[EntityWithUser] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser]

