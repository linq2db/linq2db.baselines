BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

UPDATE
	[t]
SET
	[t].[Id] = [s].[Id],
	[t].[Value] = [s].[Value],
	[t].[ValueStr] = [s].[ValueStr]
OUTPUT
	[s].[ValueStr],
	INSERTED.[Value]
FROM
	[TableWithData] [s]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]

