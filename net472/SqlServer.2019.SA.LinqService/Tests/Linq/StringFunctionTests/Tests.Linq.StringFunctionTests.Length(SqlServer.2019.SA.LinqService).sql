BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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

