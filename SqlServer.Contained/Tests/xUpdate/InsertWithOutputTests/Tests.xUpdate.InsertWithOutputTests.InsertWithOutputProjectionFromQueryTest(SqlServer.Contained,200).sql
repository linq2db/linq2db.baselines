-- SqlServer.Contained SqlServer.2019
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
	Coalesce(INSERTED.[ValueStr], N'') + N'1'
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	Coalesce([s].[ValueStr], N'') + N'100'
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Id] + 1,
	Coalesce([t].[ValueStr], N'') + N'1'
FROM
	[DestinationTable] [t]

