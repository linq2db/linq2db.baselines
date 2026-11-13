-- SqlServer.2005
SELECT
	[s].[Id],
	CASE
		WHEN [s].[Kind] = N'C1' THEN [s].[Kind]
		ELSE NULL
	END
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON [x].[ParentID] = [s].[Id]
WHERE
	[s].[Id] > 0

