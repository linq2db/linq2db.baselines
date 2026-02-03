-- SqlServer.2014.MS SqlServer.2014
DECLARE @param Int -- Int32
SET     @param = 200

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id] + 1,
	INSERTED.[ValueStr] + N'1'
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	[s].[ValueStr] + N'100'
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] + N'1'
FROM
	[DestinationTable] [t]

