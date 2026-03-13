-- SQLite.Classic SQLite

UPDATE
	[SampleClass]
SET
	[VarcharValue] = Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce([a_Children].[VarcharValue], ''), ', ')
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	), ''),
	[NVarcharValue] = Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce([a_Children].[VarcharValue], ''), ', ')
		FROM
			[SampleClass] [a_Children]
		WHERE
			[SampleClass].[Id] = [a_Children].[Id]
	), '')

