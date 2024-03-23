BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	Len([p].[FirstName]) + @p
FROM
	[Person] [p]

