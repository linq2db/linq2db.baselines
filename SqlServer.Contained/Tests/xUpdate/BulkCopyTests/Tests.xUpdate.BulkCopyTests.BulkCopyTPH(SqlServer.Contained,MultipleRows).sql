BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TPHTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	IIF([t1].[Discriminator] = 3, 1, 0),
	[t1].[Id],
	[t1].[Value3],
	[t1].[NullableBool],
	IIF([t1].[Discriminator] = 2, 1, 0),
	[t1].[Value2],
	IIF([t1].[Discriminator] = 1, 1, 0),
	[t1].[Value1],
	[t1].[Discriminator]
FROM
	[TPHTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = N'Str1'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = N'Str2'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	IIF([x].[Discriminator] = 3, 1, 0),
	[x].[Id],
	[x].[Value3],
	[x].[NullableBool],
	IIF([x].[Discriminator] = 2, 1, 0),
	[x].[Value2],
	IIF([x].[Discriminator] = 1, 1, 0),
	[x].[Value1],
	[x].[Discriminator]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = N'Str3'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TPHTable]

