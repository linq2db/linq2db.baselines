BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
SELECT 0,1,1,3,0 UNION ALL
SELECT 1,11,12,13,1 UNION ALL
SELECT 2,21,22,23,2 UNION ALL
SELECT 3,31,32,33,3

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [NewEntities]
(
	[id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_NewEntities] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
SELECT 0,0,0,0 UNION ALL
SELECT 1,1,1,1 UNION ALL
SELECT 2,2,2,2 UNION ALL
SELECT 3,3,3,3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId Integer -- Int32
SET     @someId = 100

UPDATE
	[UpdatedEntities]
SET
	[c_1].[Value1] = ([c_1].[Value1] * [t].[Value1]) * @int1,
	[c_1].[Value2] = ([c_1].[Value2] * [t].[Value2]) * @int2,
	[c_1].[Value3] = ([c_1].[Value3] * [t].[Value3]) * @int3
FROM
	[UpdatedEntities] [c_1]
		INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
WHERE
	[t].[id] <> @someId

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [NewEntities]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [UpdatedEntities]

