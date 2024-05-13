BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser3]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityWithUser3]
(
	[UserId]               INTEGER NOT NULL,
	[BelongsToCurrentUser] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 1
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0

INSERT INTO [EntityWithUser3]
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
-- SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 2

SELECT
	COUNT(*)
FROM
	[EntityWithUser3] [x]
WHERE
	[x].[UserId] = @CurrentUserId

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityWithUser3]

