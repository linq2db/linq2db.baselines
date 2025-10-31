BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @In VarChar(20) -- AnsiString
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In)

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn)

