﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [vertrge]
		LEFT JOIN [Contract] [a_Ref] ON [vertrge].[FK] = [a_Ref].[Id]
WHERE
	[vertrge].[FK] = 1

