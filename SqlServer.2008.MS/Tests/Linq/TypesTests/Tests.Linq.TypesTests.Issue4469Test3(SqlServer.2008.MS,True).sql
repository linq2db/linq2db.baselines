﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

