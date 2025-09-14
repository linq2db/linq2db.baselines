BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

UPDATE
	[t]
SET
	[t].[Value] = [t1].[Value],
	[t].[ValueStr] = [t1].[ValueStr]
OUTPUT
	INSERTED.[Value]
FROM
	[TableWithData] [t1]
		INNER JOIN [DestinationTable] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t1].[Id] = 3

