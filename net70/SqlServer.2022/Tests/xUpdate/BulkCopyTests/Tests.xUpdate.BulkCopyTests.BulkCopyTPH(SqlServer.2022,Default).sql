BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TPHTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TPHTable]', N'U') IS NULL)
	CREATE TABLE [TPHTable]
	(
		[Id]            Int          NOT NULL,
		[Discriminator] Int          NOT NULL,
		[Value1]        NVarChar(50)     NULL,
		[Value2]        NVarChar(50)     NULL,
		[Value3]        NVarChar(50)     NULL,
		[NullableBool]  VarChar(1)       NULL,

		CONSTRAINT [PK_TPHTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
INSERT BULK [TPHTable](Id, Discriminator, Value1, Value2, Value3, NullableBool)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3],
	[t1].[NullableBool]
FROM
	[TPHTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = N'Str1'

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = N'Str2'

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = N'Str3'

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TPHTable]

