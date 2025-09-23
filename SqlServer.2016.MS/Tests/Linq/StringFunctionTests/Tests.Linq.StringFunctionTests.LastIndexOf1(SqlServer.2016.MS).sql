BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Length Int -- Int32
SET     @Length = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	((LEN([p].[LastName] + N'.') - 1) - CharIndex(N'p', Reverse([p].[LastName]))) - @Length = 1 AND
	CharIndex(N'p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

