﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	DATETIMEFROMPARTS(2010 + [t].[ID], @month, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

