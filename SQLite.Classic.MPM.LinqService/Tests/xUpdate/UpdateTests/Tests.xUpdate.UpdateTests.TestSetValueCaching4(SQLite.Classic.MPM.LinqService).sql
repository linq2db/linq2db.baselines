BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1  -- Guid
SET     @Value1 = X'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @Value2  -- Int32
SET     @Value2 = 10
DECLARE @Value3  -- Int32
SET     @Value3 = 6
DECLARE @Value4  -- Guid
SET     @Value4 = NULL
DECLARE @Value5  -- Int32
SET     @Value5 = NULL
DECLARE @Value6  -- Int32
SET     @Value6 = NULL

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
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4,
	@Value5,
	@Value6
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value4  -- Guid
SET     @Value4 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value4  -- Guid
SET     @Value4 = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

