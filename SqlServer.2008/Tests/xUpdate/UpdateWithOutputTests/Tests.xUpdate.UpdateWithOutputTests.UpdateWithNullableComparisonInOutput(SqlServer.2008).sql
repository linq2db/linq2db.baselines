-- SqlServer.2008
UPDATE
	[DestinationTable]
SET
	[Id] = [DestinationTable].[Id],
	[Value] = [DestinationTable].[Value] + 1,
	[ValueStr] = [DestinationTable].[ValueStr]
OUTPUT
	INSERTED.[Id],
	CASE
		WHEN INSERTED.[ValueStr] <> N'Str1' OR INSERTED.[ValueStr] IS NULL
			THEN 1
		ELSE 0
	END

