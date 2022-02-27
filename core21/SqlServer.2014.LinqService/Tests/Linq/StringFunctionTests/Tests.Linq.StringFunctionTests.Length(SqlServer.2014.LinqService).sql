BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Length_1 Int -- Int32
SET     @Length_1 = 4

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[FirstName]) = @Length_1 AND [p].[PersonID] = 1

