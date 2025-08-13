BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

UPDATE
	[t]
SET
	[t].[Id] = [t1].[Id],
	[t].[Value] = [t1].[Value],
	[t].[ValueStr] = [t1].[ValueStr]
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
FROM
	[TableWithData] [t1]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t1].[Id] = 3

