BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @In VarChar -- AnsiString
SET     @In = NULL
DECLARE @In_1 VarChar -- AnsiString
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar -- AnsiString
SET     @NotIn_1 = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

