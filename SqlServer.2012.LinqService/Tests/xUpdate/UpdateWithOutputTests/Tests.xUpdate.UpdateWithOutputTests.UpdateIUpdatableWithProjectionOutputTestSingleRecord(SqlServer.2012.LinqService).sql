BeforeExecute
-- SqlServer.2012

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] = 3

