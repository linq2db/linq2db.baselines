BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Id] = [TableWithData].[Id],
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] = 3

