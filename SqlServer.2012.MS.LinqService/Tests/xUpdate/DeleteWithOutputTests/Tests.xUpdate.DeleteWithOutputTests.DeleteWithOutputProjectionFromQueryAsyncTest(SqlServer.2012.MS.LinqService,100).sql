﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DELETE [s]
OUTPUT
	DELETED.[Id] + 1,
	DELETED.[ValueStr] + CAST(1 AS NVarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] > 3

