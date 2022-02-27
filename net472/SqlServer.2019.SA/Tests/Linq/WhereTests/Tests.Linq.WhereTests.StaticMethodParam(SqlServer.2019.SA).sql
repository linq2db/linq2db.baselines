BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

