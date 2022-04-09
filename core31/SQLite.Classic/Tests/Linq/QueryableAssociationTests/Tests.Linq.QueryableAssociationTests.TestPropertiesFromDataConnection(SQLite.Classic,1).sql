BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser]
(
	[UserId]                   INTEGER NOT NULL,
	[BelongsToCurrentUser]     Bit     NOT NULL,
	[BelongsToCurrentUserFail] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 1

SELECT
	Count(*)
FROM
	[EntityWithUser] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser]

