-- SqlServer.2012.MS SqlServer.2012
UPDATE
	[DestinationTable]
SET
	[Id] = [DestinationTable].[Id],
	[Value] = [DestinationTable].[Value] + 1,
	[ValueStr] = [DestinationTable].[ValueStr]
OUTPUT
	INSERTED.[Id],
	NULL

