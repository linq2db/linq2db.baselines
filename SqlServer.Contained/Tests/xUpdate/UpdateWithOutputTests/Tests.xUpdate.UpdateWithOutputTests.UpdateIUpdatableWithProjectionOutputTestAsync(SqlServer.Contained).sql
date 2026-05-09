-- SqlServer.Contained SqlServer.2019

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

