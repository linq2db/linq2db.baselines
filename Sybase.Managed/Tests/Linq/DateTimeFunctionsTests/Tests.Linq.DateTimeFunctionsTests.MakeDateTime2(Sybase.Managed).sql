﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01 20:35:44.000' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01 20:35:44.000' AS DateTime)) = 2010

