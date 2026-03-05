-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[SampleClass]
SET
	[VarcharValue] = (
		SELECT
			STRING_AGG([a_Children].[VarcharValue], ' | ')
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	),
	[NVarcharValue] = (
		SELECT
			STRING_AGG([a_Children].[VarcharValue], ' | ')
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	)

