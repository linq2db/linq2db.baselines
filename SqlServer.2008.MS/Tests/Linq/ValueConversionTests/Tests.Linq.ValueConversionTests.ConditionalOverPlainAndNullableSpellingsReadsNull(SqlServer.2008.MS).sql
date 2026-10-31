-- SqlServer.2008.MS SqlServer.2008
SELECT
	CASE
		WHEN [r].[Id] = 1 THEN [r].[Plain]
		ELSE [r].[Date]
	END
FROM
	[Issue5975Row] [r]
ORDER BY
	[r].[Id]

