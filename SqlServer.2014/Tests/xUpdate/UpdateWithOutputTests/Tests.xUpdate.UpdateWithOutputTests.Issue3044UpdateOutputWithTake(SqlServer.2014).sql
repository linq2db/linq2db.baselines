-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

UPDATE
	[u]
SET
	[u].[Id] = [t1].[c1],
	[u].[Value] = [t1].[Value_1],
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
			[i].[Value] as [Value_1],
			[i].[ValueStr],
			[i].[Id]
		FROM
			[TableWithData] [i]
		WHERE
			[i].[Id] >= 7
		ORDER BY
			[i].[Id]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]

