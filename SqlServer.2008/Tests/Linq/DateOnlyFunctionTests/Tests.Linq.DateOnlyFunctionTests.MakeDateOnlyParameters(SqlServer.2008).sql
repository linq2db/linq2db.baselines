﻿BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(Date, @p + REPLICATE('0', CASE WHEN LEN(CAST([t].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[ID] as NVARCHAR))) END) + CAST([t].[ID] as NVARCHAR) + N'-01')) = 2010

