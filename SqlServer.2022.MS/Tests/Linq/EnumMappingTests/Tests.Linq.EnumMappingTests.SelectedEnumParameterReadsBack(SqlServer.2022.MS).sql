-- SqlServer.2022.MS SqlServer.2022
DECLARE @gender Int -- Int32
SET     @gender = 1

SELECT
	[p].[PersonID],
	@gender
FROM
	[Person] [p]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

