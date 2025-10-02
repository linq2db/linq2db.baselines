BeforeExecute
-- SqlServer.2008 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] > 3

