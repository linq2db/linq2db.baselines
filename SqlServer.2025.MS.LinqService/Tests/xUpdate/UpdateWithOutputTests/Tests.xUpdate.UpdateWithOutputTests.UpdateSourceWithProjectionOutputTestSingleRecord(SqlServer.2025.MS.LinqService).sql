BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Id] = [TableWithData].[Id],
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	DELETED.[Value],
	INSERTED.[Value]
WHERE
	[TableWithData].[Id] = 3

