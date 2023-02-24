BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, @p_1 + format([p].[ID], 'd2') + N'-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

