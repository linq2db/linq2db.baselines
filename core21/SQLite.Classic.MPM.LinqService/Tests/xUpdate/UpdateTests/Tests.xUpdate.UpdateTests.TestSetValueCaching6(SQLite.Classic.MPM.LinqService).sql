BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [UpdateSetTest]
(
	[Id]     INTEGER NOT NULL,
	[Value1] Guid    NOT NULL,
	[Value2] INTEGER NOT NULL,
	[Value3] INTEGER NOT NULL,
	[Value4] Guid        NULL,
	[Value5] INTEGER     NULL,
	[Value6] INTEGER     NULL,

	CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [UpdateSetTest]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4],
	[Value5],
	[Value6]
)
VALUES
(1,Cast(x'a57339bd2343d84d9f4fdf9f93e2a627' as blob),10,6,NULL,NULL,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value6  -- Int32
SET     @Value6 = 7
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value6  -- Int32
SET     @Value6 = 8
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [UpdateSetTest]

