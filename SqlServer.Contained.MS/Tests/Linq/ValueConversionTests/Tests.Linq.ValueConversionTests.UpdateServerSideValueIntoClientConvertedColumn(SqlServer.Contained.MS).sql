-- SqlServer.Contained.MS SqlServer.2019
DECLARE @test DateTime2
SET     @test = DATETIME2FROMPARTS(2026, 6, 6, 2, 1, 1, 0, 7)

UPDATE
	[Issue5975Row]
SET
	[Date] = IIF([Issue5975Row].[Date] IS NOT NULL, @test, DateAdd(day, 1, [Issue5975Row].[Plain]))

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]
ORDER BY
	[t1].[Id]

