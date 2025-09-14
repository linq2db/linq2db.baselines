BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[u]
SET
	[u].[Value] = 20,
	[u].[ValueStr] = [u].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
FROM
	[TableWithData] [u],
	(
		SELECT TOP (@take)
			[i].[Id]
		FROM
			[TableWithData] [i]
		WHERE
			[i].[Id] = 7
		ORDER BY
			[i].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]

