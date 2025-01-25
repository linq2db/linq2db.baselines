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

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,'TWO','___Value2___'

BeforeExecute
-- SqlCe
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value4___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar -- String
SET     @CEnum_1 = NULL

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @CEnum NVarChar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

