-- SqlServer.2005

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 3 AS [Id], N'Janet' AS [Value]
				UNION ALL
				SELECT 4, N'Doe') [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

