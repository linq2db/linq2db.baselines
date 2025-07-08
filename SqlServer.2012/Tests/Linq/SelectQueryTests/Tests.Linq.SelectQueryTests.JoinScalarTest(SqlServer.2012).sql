BeforeExecute
-- SqlServer.2012

SELECT
	[t].[Id],
	[t].[Value],
	[s_1].[c1]
FROM
	[SampleClass] [t]
		CROSS APPLY (
			SELECT
				[s].[c1]
			FROM
				(
					SELECT
						1 as [c1]
					WHERE
						1 = [t].[Id]
				) [s]
		) [s_1]

