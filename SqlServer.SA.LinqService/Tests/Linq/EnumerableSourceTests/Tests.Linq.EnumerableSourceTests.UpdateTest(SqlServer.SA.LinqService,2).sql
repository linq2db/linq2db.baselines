BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(VALUES
		(3,N'Janet Updated'), (4,N'Doe Updated')
	) [r]([Id], [Value])
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

