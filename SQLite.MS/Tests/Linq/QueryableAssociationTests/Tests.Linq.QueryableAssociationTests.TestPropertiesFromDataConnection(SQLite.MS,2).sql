BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser1]
(
	[UserId]               INTEGER NOT NULL,
	[BelongsToCurrentUser] Bit     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EntityWithUser1]
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
-- SQLite.MS SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 2

SELECT
	COUNT(*)
FROM
	[EntityWithUser1] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser1]

