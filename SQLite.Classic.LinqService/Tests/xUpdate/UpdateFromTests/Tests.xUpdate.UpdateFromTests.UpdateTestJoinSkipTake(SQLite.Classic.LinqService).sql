﻿BeforeExecute
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
DECLARE @id  -- Int32
SET     @id = 0
DECLARE @Value1  -- Int32
SET     @Value1 = 1
DECLARE @Value2  -- Int32
SET     @Value2 = 1
DECLARE @Value3  -- Int32
SET     @Value3 = 3
DECLARE @RelationId  -- Int32
SET     @RelationId = 0

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 11
DECLARE @Value2  -- Int32
SET     @Value2 = 12
DECLARE @Value3  -- Int32
SET     @Value3 = 13
DECLARE @RelationId  -- Int32
SET     @RelationId = 1

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @Value1  -- Int32
SET     @Value1 = 21
DECLARE @Value2  -- Int32
SET     @Value2 = 22
DECLARE @Value3  -- Int32
SET     @Value3 = 23
DECLARE @RelationId  -- Int32
SET     @RelationId = 2

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 31
DECLARE @Value2  -- Int32
SET     @Value2 = 32
DECLARE @Value3  -- Int32
SET     @Value3 = 33
DECLARE @RelationId  -- Int32
SET     @RelationId = 3

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

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
DECLARE @id  -- Int32
SET     @id = 0
DECLARE @Value1  -- Int32
SET     @Value1 = 0
DECLARE @Value2  -- Int32
SET     @Value2 = 0
DECLARE @Value3  -- Int32
SET     @Value3 = 0

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 1
DECLARE @Value2  -- Int32
SET     @Value2 = 1
DECLARE @Value3  -- Int32
SET     @Value3 = 1

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @Value1  -- Int32
SET     @Value1 = 2
DECLARE @Value2  -- Int32
SET     @Value2 = 2
DECLARE @Value3  -- Int32
SET     @Value3 = 2

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 3
DECLARE @Value2  -- Int32
SET     @Value2 = 3
DECLARE @Value3  -- Int32
SET     @Value3 = 3

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

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
	[Value1] = [t2].[c1],
	[Value2] = [t2].[c2],
	[Value3] = [t2].[c3]
FROM
	(
		SELECT
			([t1].[Value1] * [t].[Value1]) * @int1 as [c1],
			([t1].[Value2] * [t].[Value2]) * @int2 as [c2],
			([t1].[Value3] * [t].[Value3]) * @int3 as [c3],
			[t1].[id]
		FROM
			[UpdatedEntities] [t1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [t1].[id]
		WHERE
			[t].[id] <> @someId
		ORDER BY
			[t1].[id]
		LIMIT @take OFFSET @skip
	) [t2]
WHERE
	[UpdatedEntities].[id] = [t2].[id]

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

