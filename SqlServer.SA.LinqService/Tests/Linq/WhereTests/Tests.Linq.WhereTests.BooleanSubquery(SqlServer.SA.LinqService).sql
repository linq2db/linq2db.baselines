﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = 1 AND [x].[Id] = 1

