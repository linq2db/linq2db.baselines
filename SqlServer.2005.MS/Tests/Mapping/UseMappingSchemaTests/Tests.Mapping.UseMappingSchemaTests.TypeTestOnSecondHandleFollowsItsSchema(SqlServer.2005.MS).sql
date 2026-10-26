-- SqlServer.2005.MS SqlServer.2005
SELECT
	[s].[Id]
FROM
	[Parent] [p]
		INNER JOIN [SourceSchemaShape] [s] ON [p].[ParentID] = [s].[Id]
WHERE
	[s].[Kind] = N'C1'

