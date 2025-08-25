BeforeExecute
-- SqlCe (asynchronously)
DECLARE @In NVarChar -- String
SET     @In = NULL
DECLARE @In_1 NVarChar -- String
SET     @In_1 = NULL

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @NotIn NVarChar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 NVarChar -- String
SET     @NotIn_1 = NULL

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

