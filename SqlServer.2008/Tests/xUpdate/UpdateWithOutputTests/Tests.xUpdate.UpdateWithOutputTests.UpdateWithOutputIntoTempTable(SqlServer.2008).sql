BeforeExecute
-- SqlServer.2008 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	DELETED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData].[Id] > 3

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#destination] [t1]

