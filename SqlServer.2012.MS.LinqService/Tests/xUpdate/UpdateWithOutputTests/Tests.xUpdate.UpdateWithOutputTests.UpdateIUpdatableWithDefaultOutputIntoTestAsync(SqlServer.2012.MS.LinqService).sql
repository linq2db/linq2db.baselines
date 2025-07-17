BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

UPDATE
	[TableWithData]
SET
	[Value] = [TableWithData].[Value] + 1,
	[ValueStr] = [TableWithData].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData].[Id] > 3

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[destination] [t1]

