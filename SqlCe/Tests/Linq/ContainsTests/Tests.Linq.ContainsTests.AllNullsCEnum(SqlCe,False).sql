BeforeExecute
-- SqlCe
DECLARE @In NVarChar -- String
SET     @In = NULL

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In)

BeforeExecute
-- SqlCe
DECLARE @NotIn NVarChar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn)

