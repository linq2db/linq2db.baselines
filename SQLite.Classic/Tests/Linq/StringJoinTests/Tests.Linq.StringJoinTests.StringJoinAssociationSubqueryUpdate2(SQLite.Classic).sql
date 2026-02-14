-- SQLite.Classic SQLite

UPDATE
	[SampleClass]
SET
	[VarcharValue] = (
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([a_Children].[VarcharValue], ''), ', '), '') as [Result_1]
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	),
	[NVarcharValue] = (
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([a_Children].[VarcharValue], ''), ', '), '') as [Result_1]
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	)

