﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [TPHTable]
(
	[Id]            Int          NOT NULL,
	[Discriminator] Int          NOT NULL,
	[Value1]        NVarChar(50)     NULL,
	[Value2]        NVarChar(50)     NULL,
	[NullableBool]  VarChar(1)       NULL,
	[Value3]        NVarChar(50)     NULL,

	CONSTRAINT [PK_TPHTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
INSERT BULK [TPHTable](Id, Discriminator, Value1, Value2, NullableBool, Value3)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[NullableBool],
	[t1].[Value3]
FROM
	[TPHTable] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = N'Str1'

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = N'Str2'

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = N'Str3'

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TPHTable]

