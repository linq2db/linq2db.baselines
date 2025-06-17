BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = N'123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = N'1' OR [r].[Value] = N'test' THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

