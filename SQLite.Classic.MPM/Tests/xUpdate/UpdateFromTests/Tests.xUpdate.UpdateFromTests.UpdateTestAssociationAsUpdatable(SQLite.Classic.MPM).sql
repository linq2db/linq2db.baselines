BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdatedEntities]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateRelation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UpdateRelation]
(
	[id]            INTEGER NOT NULL,
	[RelatedValue1] INTEGER NOT NULL,
	[RelatedValue2] INTEGER NOT NULL,
	[RelatedValue3] INTEGER NOT NULL,

	CONSTRAINT [PK_UpdateRelation] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(0,1,2,3),
(1,11,12,13),
(2,21,22,23),
(3,31,32,33)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [a_Relation].[RelatedValue3]
FROM
	[UpdateRelation] [a_Relation]
WHERE
	[a_Relation].[RelatedValue1] = 11 AND
	[a_Relation].[RelatedValue1] IS NOT NULL AND
	[UpdatedEntities].[RelationId] = [a_Relation].[id] AND
	[UpdatedEntities].[RelationId] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id] AND [v].[RelationId] IS NOT NULL
WHERE
	[a_Relation].[RelatedValue1] = 11 AND [a_Relation].[RelatedValue1] IS NOT NULL
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateRelation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdatedEntities]

