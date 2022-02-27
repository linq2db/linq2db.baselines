BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1320

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateAdd(month, (@ID + [p].[ID]) - 1, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

