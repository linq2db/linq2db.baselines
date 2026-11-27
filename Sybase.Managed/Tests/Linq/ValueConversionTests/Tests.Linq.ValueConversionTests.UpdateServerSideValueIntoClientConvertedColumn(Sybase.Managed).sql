-- Sybase.Managed Sybase
DECLARE @test DateTime
SET     @test = '2026-06-06 02:01:01.000'

UPDATE
	[ShiftedDateRow]
SET
	[Date] = CASE
		WHEN [ShiftedDateRow].[Date] IS NOT NULL THEN @test
		ELSE DateAdd(day, 1, [ShiftedDateRow].[Plain])
	END

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
ORDER BY
	[t1].[Id]

