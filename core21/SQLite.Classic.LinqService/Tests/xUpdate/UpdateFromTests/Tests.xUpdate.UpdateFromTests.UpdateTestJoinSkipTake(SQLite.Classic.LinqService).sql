BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [UpdatedEntities]
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

CREATE TABLE [NewEntities]
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
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @int3  -- Int32
SET     @int3 = 33

UPDATE
	[UpdatedEntities]
SET
	[Value1] = (
		SELECT
			([t1].[Value1] * [t1].[Value1_1]) * @int1
		FROM
			(
				SELECT
					[c_1].[Value1],
					[t].[Value1] as [Value1_1],
					[c_1].[Value2],
					[t].[Value2] as [Value2_1],
					[c_1].[Value3],
					[t].[Value3] as [Value3_1],
					[c_1].[id]
				FROM
					[UpdatedEntities] [c_1]
						INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
				WHERE
					[t].[id] <> @someId
				ORDER BY
					[c_1].[id]
				LIMIT @take OFFSET @skip
			) [t1]
		WHERE
			[UpdatedEntities].[id] = [t1].[id]
	),
	[Value2] = (
		SELECT
			([t2].[Value2] * [t2].[Value2_1]) * @int2
		FROM
			(
				SELECT
					[c_2].[Value1],
					[t_1].[Value1] as [Value1_1],
					[c_2].[Value2],
					[t_1].[Value2] as [Value2_1],
					[c_2].[Value3],
					[t_1].[Value3] as [Value3_1],
					[c_2].[id]
				FROM
					[UpdatedEntities] [c_2]
						INNER JOIN [NewEntities] [t_1] ON [t_1].[id] = [c_2].[id]
				WHERE
					[t_1].[id] <> @someId
				ORDER BY
					[c_2].[id]
				LIMIT @take OFFSET @skip
			) [t2]
		WHERE
			[UpdatedEntities].[id] = [t2].[id]
	),
	[Value3] = (
		SELECT
			([t3].[Value3] * [t3].[Value3_1]) * @int3
		FROM
			(
				SELECT
					[c_3].[Value1],
					[t_2].[Value1] as [Value1_1],
					[c_3].[Value2],
					[t_2].[Value2] as [Value2_1],
					[c_3].[Value3],
					[t_2].[Value3] as [Value3_1],
					[c_3].[id]
				FROM
					[UpdatedEntities] [c_3]
						INNER JOIN [NewEntities] [t_2] ON [t_2].[id] = [c_3].[id]
				WHERE
					[t_2].[id] <> @someId
				ORDER BY
					[c_3].[id]
				LIMIT @take OFFSET @skip
			) [t3]
		WHERE
			[UpdatedEntities].[id] = [t3].[id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[c_4].[Value1],
					[t_3].[Value1] as [Value1_1],
					[c_4].[Value2],
					[t_3].[Value2] as [Value2_1],
					[c_4].[Value3],
					[t_3].[Value3] as [Value3_1],
					[c_4].[id]
				FROM
					[UpdatedEntities] [c_4]
						INNER JOIN [NewEntities] [t_3] ON [t_3].[id] = [c_4].[id]
				WHERE
					[t_3].[id] <> @someId
				ORDER BY
					[c_4].[id]
				LIMIT @take OFFSET @skip
			) [t4]
		WHERE
			[UpdatedEntities].[id] = [t4].[id]
	)

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

DROP TABLE [NewEntities]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [UpdatedEntities]

