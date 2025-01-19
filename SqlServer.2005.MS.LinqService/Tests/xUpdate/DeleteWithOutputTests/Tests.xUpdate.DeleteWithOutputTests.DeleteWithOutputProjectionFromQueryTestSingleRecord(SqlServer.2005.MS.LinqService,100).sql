﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + CAST(1 AS VarChar(11)),
	CASE
		WHEN DELETED.[ValueStr] IS NOT NULL THEN 1
		ELSE 0
	END
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

