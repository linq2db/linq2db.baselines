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

