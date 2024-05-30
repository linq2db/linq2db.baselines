BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser2]
(
	[UserId]               INTEGER NOT NULL,
	[BelongsToCurrentUser] Bit     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 1
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser2]
(
	[UserId],
	[BelongsToCurrentUser]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 2

SELECT
	COUNT(*)
FROM
	[EntityWithUser2] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityWithUser2]

