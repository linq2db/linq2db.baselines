﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [vertrge]
		LEFT JOIN [Contract] [a_Ref] ON [vertrge].[FK] = [a_Ref].[Id]
WHERE
	[vertrge].[FK] = 1

