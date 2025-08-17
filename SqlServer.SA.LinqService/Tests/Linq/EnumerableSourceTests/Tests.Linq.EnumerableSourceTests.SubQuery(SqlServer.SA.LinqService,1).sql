BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

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
			(VALUES
				(2,N'Janet'), (3,N'Doe')
			) [r]([Id], [Value])
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

