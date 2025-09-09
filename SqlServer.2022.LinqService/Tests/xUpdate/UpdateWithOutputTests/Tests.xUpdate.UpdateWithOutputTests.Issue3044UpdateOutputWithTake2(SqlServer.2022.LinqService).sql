BeforeExecute
-- SqlServer.2022 (asynchronously)
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
			[i].[Id],
			[i].[Value] as [Value_1],
			[i].[ValueStr]
		FROM
			[TableWithData] [i]
		WHERE
			[i].[Id] = 7
		ORDER BY
			[i].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id] AND [u].[Value] = [t1].[Value_1] AND
	([u].[ValueStr] = [t1].[ValueStr] OR [u].[ValueStr] IS NULL AND [t1].[ValueStr] IS NULL)

