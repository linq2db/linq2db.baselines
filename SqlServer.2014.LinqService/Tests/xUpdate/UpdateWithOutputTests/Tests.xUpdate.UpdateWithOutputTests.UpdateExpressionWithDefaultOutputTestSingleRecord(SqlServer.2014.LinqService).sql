BeforeExecute
-- SqlServer.2014 (asynchronously)

UPDATE
	[t]
SET
	[t].[Id] = [t1].[Id],
	[t].[Value] = [t1].[Value],
	[t].[ValueStr] = [t1].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
FROM
	[TableWithData] [t1]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t1].[Id] = 3

