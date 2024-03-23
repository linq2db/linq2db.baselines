BeforeExecute
-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	Len([p].[FirstName]) + @p
FROM
	[Person] [p]

