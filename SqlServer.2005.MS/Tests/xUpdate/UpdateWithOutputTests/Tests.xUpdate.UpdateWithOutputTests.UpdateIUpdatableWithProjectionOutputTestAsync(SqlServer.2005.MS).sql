-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = Coalesce([TableWithData].[ValueStr], N'') + N'Upd'
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] > 3

