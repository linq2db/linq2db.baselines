BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID UniVarChar(5) -- String
SET     @ID = '2010-'

SELECT
	Convert(Date, @ID + Convert(VarChar(11), [p].[ID]) + '-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(Date, @ID + Convert(VarChar(11), [p].[ID]) + '-1')) = 2010

