-- SqlServer.2017.MS SqlServer.2017

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

