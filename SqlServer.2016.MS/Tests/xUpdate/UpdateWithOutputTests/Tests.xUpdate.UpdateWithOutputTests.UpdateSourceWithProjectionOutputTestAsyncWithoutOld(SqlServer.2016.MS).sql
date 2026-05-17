-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = Coalesce([TableWithData].[ValueStr], N'') + N'Upd'
OUTPUT
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] > 3

