﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [EntityWithUser]
(
	[UserId]                   INTEGER NOT NULL,
	[BelongsToCurrentUser]     Bit     NOT NULL,
	[BelongsToCurrentUserFail] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 1
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 2
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 3
DECLARE @BelongsToCurrentUser  -- Boolean
SET     @BelongsToCurrentUser = 0
DECLARE @BelongsToCurrentUserFail  -- Boolean
SET     @BelongsToCurrentUserFail = 0

INSERT INTO [EntityWithUser]
(
	[UserId],
	[BelongsToCurrentUser],
	[BelongsToCurrentUserFail]
)
VALUES
(
	@UserId,
	@BelongsToCurrentUser,
	@BelongsToCurrentUserFail
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [EntityWithUser]

