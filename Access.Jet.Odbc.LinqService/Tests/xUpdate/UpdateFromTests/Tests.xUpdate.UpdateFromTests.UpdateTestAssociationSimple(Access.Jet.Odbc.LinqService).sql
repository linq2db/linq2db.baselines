﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdatedEntities]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [UpdatedEntities]
(
	[id]         Int NOT NULL,
	[Value1]     Int NOT NULL,
	[Value2]     Int NOT NULL,
	[Value3]     Int NOT NULL,
	[RelationId] Int     NULL,

	CONSTRAINT [PK_UpdatedEntities] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 0
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1
DECLARE @Value2 Int -- Int32
SET     @Value2 = 1
DECLARE @Value3 Int -- Int32
SET     @Value3 = 3
DECLARE @RelationId Int -- Int32
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 11
DECLARE @Value2 Int -- Int32
SET     @Value2 = 12
DECLARE @Value3 Int -- Int32
SET     @Value3 = 13
DECLARE @RelationId Int -- Int32
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = 21
DECLARE @Value2 Int -- Int32
SET     @Value2 = 22
DECLARE @Value3 Int -- Int32
SET     @Value3 = 23
DECLARE @RelationId Int -- Int32
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 31
DECLARE @Value2 Int -- Int32
SET     @Value2 = 32
DECLARE @Value3 Int -- Int32
SET     @Value3 = 33
DECLARE @RelationId Int -- Int32
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdateRelation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [UpdateRelation]
(
	[id]            Int NOT NULL,
	[RelatedValue1] Int NOT NULL,
	[RelatedValue2] Int NOT NULL,
	[RelatedValue3] Int NOT NULL,

	CONSTRAINT [PK_UpdateRelation] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 0
DECLARE @RelatedValue1 Int -- Int32
SET     @RelatedValue1 = 1
DECLARE @RelatedValue2 Int -- Int32
SET     @RelatedValue2 = 2
DECLARE @RelatedValue3 Int -- Int32
SET     @RelatedValue3 = 3

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @RelatedValue1 Int -- Int32
SET     @RelatedValue1 = 11
DECLARE @RelatedValue2 Int -- Int32
SET     @RelatedValue2 = 12
DECLARE @RelatedValue3 Int -- Int32
SET     @RelatedValue3 = 13

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @RelatedValue1 Int -- Int32
SET     @RelatedValue1 = 21
DECLARE @RelatedValue2 Int -- Int32
SET     @RelatedValue2 = 22
DECLARE @RelatedValue3 Int -- Int32
SET     @RelatedValue3 = 23

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3
DECLARE @RelatedValue1 Int -- Int32
SET     @RelatedValue1 = 31
DECLARE @RelatedValue2 Int -- Int32
SET     @RelatedValue2 = 32
DECLARE @RelatedValue3 Int -- Int32
SET     @RelatedValue3 = 33

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

UPDATE
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id])
SET
	[v].[Value1] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value2] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value3] = 1
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id])
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdateRelation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdatedEntities]

