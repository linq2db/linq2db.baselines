BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	Len([p].[FirstName]) + @p
FROM
	[Person] [p]

