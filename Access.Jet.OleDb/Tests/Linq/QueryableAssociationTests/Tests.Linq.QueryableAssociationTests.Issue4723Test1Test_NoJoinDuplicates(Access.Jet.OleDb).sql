-- Access.Jet.OleDb AccessOleDb

SELECT
	[x_1].[Id],
	[x_1].[Association]
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[a_Association].[Value]
				FROM
					[Issue4723Table2] [a_Association]
				WHERE
					[a_Association].[Id] = [x].[Id]
			) as [Association],
			[x].[Id]
		FROM
			[Issue4723Table1] [x]
	) [x_1]
WHERE
	[x_1].[Association] IS NOT NULL AND [x_1].[Association] <> 'unknown'

