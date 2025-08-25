BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)
DECLARE @In NVarChar(12) -- String
SET     @In = '___Value3___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (@In) OR [s].[CEnum] IS NULL)

BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)
DECLARE @NotIn NVarChar(12) -- String
SET     @NotIn = '___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- SqlCe (asynchronously)
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

