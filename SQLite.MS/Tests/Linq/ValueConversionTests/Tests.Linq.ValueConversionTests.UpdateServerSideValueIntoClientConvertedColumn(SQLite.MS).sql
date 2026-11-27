-- SQLite.MS SQLite
DECLARE @test Text(23) -- DateTime
SET     @test = '2026-06-06 02:01:01.000'

UPDATE
	[ShiftedDateRow]
SET
	[Date] = CASE
		WHEN [ShiftedDateRow].[Date] IS NOT NULL THEN @test
		ELSE strftime('%Y-%m-%d %H:%M:%f', [ShiftedDateRow].[Plain], '1 Day')
	END

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
ORDER BY
	[t1].[Id]

