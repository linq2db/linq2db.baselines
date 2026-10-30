-- Access.Jet.Odbc AccessODBC
SELECT
	IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					SUM(IIF(0 >= [row_1].[Value], 0, [row_1].[Value]))
				FROM
					[Row] [row_1]
				WHERE
					[row_1].[ParentId] = [parent].[Id] AND [row_1].[Value] > 3 AND
					0 < [row_1].[Value]
			) as [Sum_1],
			[parent].[Id]
		FROM
			[ParentRow] [parent]
	) [t1]
ORDER BY
	[t1].[Id]

