-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[SampleClass] [t]
		OUTER APPLY (
			SELECT
				STRING_AGG([a_Children].[VarcharValue], ' | ') as [Result_1]
			FROM
				[SampleClass] [a_Children]
			WHERE
				[t].[Id] = [a_Children].[Id]
		) [t1]
SET
	[t].[VarcharValue] = [t1].[Result_1],
	[t].[NVarcharValue] = [t1].[Result_1]

