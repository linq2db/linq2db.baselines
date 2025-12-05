-- Access.Ace.OleDb AccessOleDb

SELECT DISTINCT
	[r].[Value1]
FROM
	[SampleData] [r]
WHERE
	[r].[Id] MOD 2 = 0 AND NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [r_1]
		WHERE
			[r_1].[Id] MOD 4 = 0 AND [r].[Id] = [r_1].[Id] AND
			[r].[Value1] = [r_1].[Value2] / 10
	) AND
	NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [r_2]
		WHERE
			[r_2].[Id] MOD 6 = 0 AND [r].[Id] = [r_2].[Id] AND
			[r].[Value1] = [r_2].[Value1]
	)

