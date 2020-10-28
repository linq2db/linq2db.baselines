BeforeExecute
-- SqlCe
DECLARE @p1 NVarChar(5) -- String
SET     @p1 = '2010-'

SELECT
	Convert(Datetime, @p1 + Convert(NVarChar(11), [p].[ID]) + '-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(Datetime, @p1 + Convert(NVarChar(11), [p].[ID]) + '-1')) = 2010

