BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @In VarChar(20) -- AnsiString
SET     @In = NULL
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(20) -- AnsiString
SET     @NotIn_1 = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

