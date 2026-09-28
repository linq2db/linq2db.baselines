-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @test VarChar(23) -- AnsiString
SET     @test = '2026-06-06 02:01:01.000'

UPDATE
	[Issue5975Row]
SET
	[Date] = CASE
		WHEN [Issue5975Row].[Date] IS NOT NULL THEN @test
		ELSE DATETIME('now', 'localtime')
	END

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]
ORDER BY
	[t1].[Id]

