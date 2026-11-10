-- SqlServer.2012.MS SqlServer.2012
SELECT
	Coalesce((
		SELECT
			SUM(IIF(0 >= [row_1].[Value], 0, [row_1].[Value]))
		FROM
			[Row] [row_1]
		WHERE
			[row_1].[ParentId] = [parent].[Id] AND [row_1].[Value] > 3 AND
			0 < [row_1].[Value]
	), 0)
FROM
	[ParentRow] [parent]
ORDER BY
	[parent].[Id]

