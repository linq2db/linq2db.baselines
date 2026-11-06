-- SqlServer.2017
UPDATE
	[DestinationTable]
SET
	[Id] = [DestinationTable].[Id],
	[Value] = [DestinationTable].[Value] + 1,
	[ValueStr] = [DestinationTable].[ValueStr]
OUTPUT
	INSERTED.[Id],
	IIF(INSERTED.[ValueStr] <> N'Str1' OR INSERTED.[ValueStr] IS NULL, 1, 0)

