-- SqlServer.2008
DECLARE @test DateTime2
SET     @test = CAST('2026-06-06T02:01:01.0000000' AS DATETIME2)

UPDATE
	[ShiftedDateRow]
SET
	[Date] = CASE
		WHEN [ShiftedDateRow].[Date] IS NOT NULL THEN @test
		ELSE DateAdd(day, 1, [ShiftedDateRow].[Plain])
	END

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
ORDER BY
	[t1].[Id]

