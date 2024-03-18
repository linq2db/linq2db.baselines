BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

