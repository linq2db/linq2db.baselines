BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 UniVarChar(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 1

INSERT INTO [TPHTable]
(
	[Id],
	[Value1],
	[Discriminator]
)
VALUES
(
	@Id,
	@Value1,
	@Discriminator
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value2 UniVarChar(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 2

INSERT INTO [TPHTable]
(
	[Id],
	[Value2],
	[Discriminator]
)
VALUES
(
	@Id,
	@Value2,
	@Discriminator
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = 'Y'
DECLARE @Value3 UniVarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 3

INSERT INTO [TPHTable]
(
	[Id],
	[NullableBool],
	[Value3],
	[Discriminator]
)
VALUES
(
	@Id,
	@NullableBool,
	@Value3,
	@Discriminator
)

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT TOP 2
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
-- Sybase.Managed Sybase

SELECT TOP 2
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
-- Sybase.Managed Sybase

SELECT TOP 2
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
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = 'Str1'

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = 'Str2'

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = 'Str3'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TPHTable') IS NOT NULL)
	DROP TABLE [TPHTable]

