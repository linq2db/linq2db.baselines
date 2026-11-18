-- SqlServer.2016.MS SqlServer.2016
SELECT
	IIF([r].[Id] = 1, [r].[Plain], [r].[Date])
FROM
	[Issue5975Row] [r]
ORDER BY
	[r].[Id]

