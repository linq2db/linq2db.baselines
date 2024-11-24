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
DECLARE @In_1 NVarChar -- String
SET     @In_1 = NULL

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
DECLARE @NotIn NVarChar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 NVarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

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
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

