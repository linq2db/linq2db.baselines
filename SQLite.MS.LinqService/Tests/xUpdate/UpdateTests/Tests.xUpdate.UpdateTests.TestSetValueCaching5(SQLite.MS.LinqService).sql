BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @Value5  -- Int32
SET     @Value5 = 11
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value5] = @Value5
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value5  -- Int32
SET     @Value5 = 12
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value5] = @Value5
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

