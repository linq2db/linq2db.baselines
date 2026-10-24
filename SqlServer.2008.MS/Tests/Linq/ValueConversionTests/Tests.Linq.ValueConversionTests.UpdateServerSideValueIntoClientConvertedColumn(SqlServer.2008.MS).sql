-- SqlServer.2008.MS SqlServer.2008
DECLARE @test DateTime2
SET     @test = CAST('2026-06-06T02:01:01.0000000' AS DATETIME2)

UPDATE
	[Issue5975Row]
SET
	[Date] = CASE
		WHEN [Issue5975Row].[Date] IS NOT NULL THEN @test
		ELSE DateAdd(day, 1, [Issue5975Row].[Plain])
	END

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]
ORDER BY
	[t1].[Id]

