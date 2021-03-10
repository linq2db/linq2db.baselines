BeforeExecute
-- SqlCe
DECLARE @ID NVarChar(5) -- String
SET     @ID = '2010-'

SELECT
	Convert(Datetime, @ID + Convert(NVarChar(11), [p].[ID]) + '-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(Datetime, @ID + Convert(NVarChar(11), [p].[ID]) + '-1')) = 2010

