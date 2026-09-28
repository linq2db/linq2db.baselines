-- SQLite.MS SQLite
DECLARE @test  -- DateTime
SET     @test = '2026-06-06 02:01:01.000'

UPDATE
	[Issue5975Row]
SET
	[Date] = CASE
		WHEN [Issue5975Row].[Date] IS NOT NULL THEN @test
		ELSE strftime('%Y-%m-%d %H:%M:%f', [Issue5975Row].[Plain], '1 Day')
	END

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]
ORDER BY
	[t1].[Id]

