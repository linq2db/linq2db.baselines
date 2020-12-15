﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [NewEntities]
(
	[id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_NewEntities] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @someId Int -- Int32
SET     @someId = 100

UPDATE
	[t1]
SET
	[t1].[Value1] = ([t1].[Value1] * [t1].[Value1_1]) * @int1,
	[t1].[Value2] = ([t1].[Value2] * [t1].[Value2_1]) * @int2,
	[t1].[Value3] = ([t1].[Value3] * [t1].[Value3_1]) * @int3
FROM
	(
		SELECT TOP (@take)
			[c_1].[Value1],
			[t].[Value1] as [Value1_1],
			[c_1].[Value2],
			[t].[Value2] as [Value2_1],
			[c_1].[Value3],
			[t].[Value3] as [Value3_1]
		FROM
			[UpdatedEntities] [c_1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
		WHERE
			[t].[id] <> @someId
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [NewEntities]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [UpdatedEntities]

