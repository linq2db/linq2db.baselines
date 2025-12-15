-- SqlServer.2008
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

-- SqlServer.2008
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

-- SqlServer.2008
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

-- SqlServer.2008

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

-- SqlServer.2008

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

-- SqlServer.2008

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

-- SqlServer.2008

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

-- SqlServer.2008

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

-- SqlServer.2008

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

-- SqlServer.2008

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

