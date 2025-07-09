BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @param Int -- Int32
SET     @param = 100

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id] + 1,
	INSERTED.[ValueStr] + CAST(1 AS VarChar(11))
SELECT
	[s].[Id] + 100 + @param,
	[s].[Value] + 100,
	[s].[ValueStr] + CAST(100 AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[DestinationTable] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[Id] + 1,
	[t].[ValueStr] + CAST(1 AS VarChar(11))
FROM
	[DestinationTable] [t]

