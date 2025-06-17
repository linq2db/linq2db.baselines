BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
		WHEN [r].[Value] = N'1' OR [r].[Value] = N'test' AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

