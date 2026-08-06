-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn)

