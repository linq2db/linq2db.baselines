-- SqlServer.2019.MS SqlServer.2019
DECLARE @name NVarChar(4000) -- String
SET     @name = N'John'

SELECT
	[p].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		LEFT JOIN [Doctor] [d] ON [d].[PersonID] = [p].[PersonID] AND [p].[FirstName] = @name

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

