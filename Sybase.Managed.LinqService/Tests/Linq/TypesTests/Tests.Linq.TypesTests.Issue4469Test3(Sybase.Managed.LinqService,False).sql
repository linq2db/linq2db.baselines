﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @param Double
SET     @param = 33

SELECT TOP 2
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

