BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + @ID) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

