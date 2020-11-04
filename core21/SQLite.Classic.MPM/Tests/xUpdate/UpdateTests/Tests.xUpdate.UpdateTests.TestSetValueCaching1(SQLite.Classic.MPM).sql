BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UpdateSetTest]
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
DECLARE @Value1  -- Guid
SET     @Value1 = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value1]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value1  -- Guid
SET     @Value1 = Cast(x'0d6048a921de744f8ac29516b287076e' as blob)
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value1]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

