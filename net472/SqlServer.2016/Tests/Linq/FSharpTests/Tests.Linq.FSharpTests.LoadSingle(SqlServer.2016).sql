BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT 
	[p].[PersonID], 
	[p].[FirstName], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

