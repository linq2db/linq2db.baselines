BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 UniVarChar(5) -- String
SET     @p1 = '2010-'

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(Date, @p1 + Convert(VarChar(11), [p].[ID]) + '-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

