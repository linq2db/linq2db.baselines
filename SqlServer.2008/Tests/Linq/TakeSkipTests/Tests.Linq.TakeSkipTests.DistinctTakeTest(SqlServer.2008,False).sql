-- SqlServer.2008

SELECT TOP (3)
	[t1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[r].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [r]
	) [t1]

