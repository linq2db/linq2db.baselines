BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	(
		SELECT TOP 1
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t1].[Id]
	)
FROM
	[Issue4723Table1] [t1]

