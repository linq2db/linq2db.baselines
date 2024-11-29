BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]    Int          NOT NULL,
	[Int]   Int              NULL,
	[Enum]  NVarChar(5)      NULL,
	[CEnum] NVarChar(20)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int Int -- Int32
SET     @Int = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum NVarChar -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum NVarChar(12) -- String
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
-- SqlCe
DECLARE @In NVarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 NVarChar(12) -- String
SET     @In_1 = '___Value4___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlCe
DECLARE @In NVarChar(12) -- String
SET     @In = '___Value3___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (@In) OR [s].[CEnum] IS NULL)

BeforeExecute
-- SqlCe
DECLARE @In NVarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 NVarChar(12) -- String
SET     @In_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlCe
DECLARE @NotIn NVarChar(12) -- String
SET     @NotIn = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- SqlCe
DECLARE @NotIn NVarChar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 NVarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn, @NotIn_1) OR [s].[CEnum] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

