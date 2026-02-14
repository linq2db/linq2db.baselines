-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[SampleClass]
SET
	[VarcharValue] = (
		SELECT
			GROUP_CONCAT([a_Children].[VarcharValue], ' | ') as [Result_1]
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	),
	[NVarcharValue] = (
		SELECT
			GROUP_CONCAT([a_Children].[VarcharValue], ' | ') as [Result_1]
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	)

