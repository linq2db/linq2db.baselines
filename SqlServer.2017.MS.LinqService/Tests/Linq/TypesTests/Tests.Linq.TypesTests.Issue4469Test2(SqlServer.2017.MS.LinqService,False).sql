﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Decimal(2, 0)
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(38, 17)) / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

