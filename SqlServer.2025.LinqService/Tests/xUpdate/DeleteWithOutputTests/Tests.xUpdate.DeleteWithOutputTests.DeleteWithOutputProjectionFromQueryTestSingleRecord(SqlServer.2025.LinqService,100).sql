﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + CAST(1 AS VarChar(11)),
	IIF(DELETED.[ValueStr] IS NOT NULL, 1, 0)
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

