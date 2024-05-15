BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdatedEntities]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UpdatedEntities]
(
	[id]         INTEGER NOT NULL,
	[Value1]     INTEGER NOT NULL,
	[Value2]     INTEGER NOT NULL,
	[Value3]     INTEGER NOT NULL,
	[RelationId] INTEGER     NULL,

	CONSTRAINT [PK_UpdatedEntities] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NewEntities]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NewEntities]
(
	[id]     INTEGER NOT NULL,
	[Value1] INTEGER NOT NULL,
	[Value2] INTEGER NOT NULL,
	[Value3] INTEGER NOT NULL,

	CONSTRAINT [PK_NewEntities] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

UPDATE
	[UpdatedEntities]
SET
	[Value1] = ([UpdatedEntities].[Value1] * [t].[Value1]) * @int1,
	[Value2] = ([UpdatedEntities].[Value2] * [t].[Value2]) * @int2,
	[Value3] = ([UpdatedEntities].[Value3] * [t].[Value3]) * @int3
FROM
	[NewEntities] [t]
WHERE
	[t].[id] <> @someId AND [t].[id] = [UpdatedEntities].[id]
ORDER BY
	[UpdatedEntities].[id]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NewEntities]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdatedEntities]

