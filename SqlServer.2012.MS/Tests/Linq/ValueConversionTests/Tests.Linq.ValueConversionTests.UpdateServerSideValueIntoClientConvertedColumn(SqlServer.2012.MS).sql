-- SqlServer.2012.MS SqlServer.2012
DECLARE @test DateTime2
SET     @test = DATETIME2FROMPARTS(2026, 6, 6, 2, 1, 1, 0, 7)

UPDATE
	[ShiftedDateRow]
SET
	[Date] = IIF([ShiftedDateRow].[Date] IS NOT NULL, @test, DateAdd(day, 1, [ShiftedDateRow].[Plain]))

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
ORDER BY
	[t1].[Id]

