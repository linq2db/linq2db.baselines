BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	DateAdd(month, ((2010 + [t].[ID] - 1900) * 12 + @ID) - 1, 0)
FROM
	[LinqDataTypes] [t]

