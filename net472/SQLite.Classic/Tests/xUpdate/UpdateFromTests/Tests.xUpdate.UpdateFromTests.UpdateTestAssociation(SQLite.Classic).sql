﻿BeforeExecute
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

CREATE TABLE [UpdateRelation]
(
	[id]            INTEGER NOT NULL,
	[RelatedValue1] INTEGER NOT NULL,
	[RelatedValue2] INTEGER NOT NULL,
	[RelatedValue3] INTEGER NOT NULL,

	CONSTRAINT [PK_UpdateRelation] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

UPDATE
	[UpdatedEntities]
SET
	[Value1] = (
		SELECT
			[a_Relation].[RelatedValue3]
		FROM
			[UpdatedEntities] [v]
				LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
		WHERE
			[a_Relation].[RelatedValue1] = 11 AND [UpdatedEntities].[id] = [v].[id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[UpdatedEntities] [v_1]
				LEFT JOIN [UpdateRelation] [a_Relation_1] ON [v_1].[RelationId] = [a_Relation_1].[id]
		WHERE
			[a_Relation_1].[RelatedValue1] = 11 AND [UpdatedEntities].[id] = [v_1].[id]
	)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [UpdateRelation]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [UpdatedEntities]

