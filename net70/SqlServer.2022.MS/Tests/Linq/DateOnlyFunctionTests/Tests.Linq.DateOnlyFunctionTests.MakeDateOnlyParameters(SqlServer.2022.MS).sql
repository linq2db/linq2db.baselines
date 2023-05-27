BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, @p + format([p].[ID], 'd2') + N'-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

