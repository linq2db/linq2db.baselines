-- SqlServer.2008.MS SqlServer.2008
SELECT
	CASE
		WHEN [s].[Kind] = N'C1' THEN [s].[Kind]
		ELSE NULL
	END
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON [x].[ParentID] = [s].[Id]
ORDER BY
	[s].[Id]

