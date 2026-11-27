-- SqlServer.2005.MS SqlServer.2005
DECLARE @test DateTime
SET     @test = CAST('2026-06-06T02:01:01.000' AS DATETIME)

UPDATE
	[ShiftedDateRow]
SET
	[Date] = CASE
		WHEN [ShiftedDateRow].[Date] IS NOT NULL THEN @test
		ELSE DateAdd(day, 1, [ShiftedDateRow].[Plain])
	END

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
ORDER BY
	[t1].[Id]

