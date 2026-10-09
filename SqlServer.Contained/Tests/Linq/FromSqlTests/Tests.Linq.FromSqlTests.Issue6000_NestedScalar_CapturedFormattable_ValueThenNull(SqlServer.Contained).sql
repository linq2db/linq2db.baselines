-- SqlServer.Contained SqlServer.2019
DECLARE @In Int -- Int32
SET     @In = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = @In
			) [t1]([value])
	)

-- SqlServer.Contained SqlServer.2019
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = NULL
			) [t1]([value])
	)

-- SqlServer.Contained SqlServer.2019
DECLARE @In Int -- Int32
SET     @In = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = @In
			) [t1]([value])
	)

