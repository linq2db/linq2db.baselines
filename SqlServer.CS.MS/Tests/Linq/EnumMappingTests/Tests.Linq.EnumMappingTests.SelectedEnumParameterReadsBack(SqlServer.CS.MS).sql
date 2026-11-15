-- SqlServer.CS.MS SqlServer.2025
DECLARE @gender Int -- Int32
SET     @gender = 1

SELECT
	[p].[PersonID],
	@gender
FROM
	[Person] [p]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

