BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NULL)
	EXECUTE('
		CREATE TABLE [Src]
		(
			[Id]    Int         NOT NULL,
			[Int]   Int             NULL,
			[Enum]  NVarChar(5)     NULL,
			[CEnum] VarChar(20)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum UniVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum UniVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar -- AnsiString
SET     @In_1 = NULL

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

