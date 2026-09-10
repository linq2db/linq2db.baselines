-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[u]
SET
	[u].[Value] = [t1].[c1],
	[u].[ValueStr] = [t1].[ValueStr]
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
			20 as [c1],
			[i].[ValueStr],
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

