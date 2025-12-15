-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[t]
SET
	[t].[VarcharValue] = [t1].[Result_1],
	[t].[NVarcharValue] = [t1].[Result_1]
FROM
	[SampleClass] [t]
		OUTER APPLY (
			SELECT
				Coalesce(STRING_AGG(Coalesce([a_Children].[VarcharValue], ''), ', '), '') as [Result_1]
			FROM
				[SampleClass] [a_Children]
			WHERE
				[t].[Id] = [a_Children].[Id]
		) [t1]

