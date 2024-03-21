BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(Date, @p + format([t].[ID], 'd2') + N'-01')) = 2010

