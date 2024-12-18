﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[TPHTable]', N'U') IS NOT NULL)
	DROP TABLE [TPHTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Discriminator Int -- Int32
SET     @Discriminator = 1
DECLARE @Value1 NVarChar(50) -- String
SET     @Value1 = N'Str1'

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value1]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value1
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Discriminator Int -- Int32
SET     @Discriminator = 2
DECLARE @Value2 NVarChar(50) -- String
SET     @Value2 = N'Str2'

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value2]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value2
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Discriminator Int -- Int32
SET     @Discriminator = 3
DECLARE @Value3 NVarChar(50) -- String
SET     @Value3 = N'Str3'
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = N'Y'

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value3],
	[NullableBool]
)
VALUES
(
	@Id,
	@Discriminator,
	@Value3,
	@NullableBool
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

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
	[x].[Value1] = N'Str1' AND [x].[Value1] IS NOT NULL

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
	[x].[Value2] = N'Str2' AND [x].[Value2] IS NOT NULL

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
	[x].[Value3] = N'Str3' AND [x].[Value3] IS NOT NULL

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[TPHTable]', N'U') IS NOT NULL)
	DROP TABLE [TPHTable]

