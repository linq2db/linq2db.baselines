BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 1319

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateAdd(month, [p].[ID] + @ID, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

