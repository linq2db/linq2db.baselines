-- SqlServer.2025
SELECT
	IIF([r].[Id] = 1, [r].[Plain], [r].[Date])
FROM
	[Issue5975Row] [r]
ORDER BY
	[r].[Id]

