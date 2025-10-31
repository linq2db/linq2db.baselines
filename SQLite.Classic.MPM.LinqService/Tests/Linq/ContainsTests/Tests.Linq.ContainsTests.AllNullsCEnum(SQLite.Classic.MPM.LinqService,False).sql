BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn)

