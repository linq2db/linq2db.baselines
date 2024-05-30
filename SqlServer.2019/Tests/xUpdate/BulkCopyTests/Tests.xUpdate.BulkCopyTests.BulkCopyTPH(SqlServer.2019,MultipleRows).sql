BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TPHTable]

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value1],
	[Value2],
	[Value3],
	[NullableBool]
)
VALUES
(1,1,N'Str1',NULL,NULL,NULL),
(2,2,NULL,N'Str2',NULL,NULL),
(3,3,NULL,NULL,N'Str3','Y')

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Discriminator],
	[t1].[Id],
	[t1].[Value3],
	[t1].[NullableBool],
	[t1].[Value2],
	[t1].[Value1]
FROM
	[TPHTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = N'Str1'

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = N'Str2'

BeforeExecute
-- SqlServer.2019

SELECT TOP (2)
	[x].[Discriminator],
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	[x].[Value2],
	[x].[Value1]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = N'Str3'

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TPHTable]

