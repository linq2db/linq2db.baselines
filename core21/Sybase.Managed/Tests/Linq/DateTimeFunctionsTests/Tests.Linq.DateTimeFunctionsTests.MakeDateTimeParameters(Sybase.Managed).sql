BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID UniVarChar(5) -- String
SET     @ID = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, @ID + Convert(VarChar(11), [p].[ID]) + '-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

