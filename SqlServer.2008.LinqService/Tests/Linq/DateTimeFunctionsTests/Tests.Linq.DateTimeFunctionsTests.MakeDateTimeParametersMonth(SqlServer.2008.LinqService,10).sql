﻿BeforeExecute
-- SqlServer.2008
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	CAST(RIGHT('0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(@month AS VarChar(2)), 2) + N'-01' AS DateTime2)
FROM
	[LinqDataTypes] [t]

