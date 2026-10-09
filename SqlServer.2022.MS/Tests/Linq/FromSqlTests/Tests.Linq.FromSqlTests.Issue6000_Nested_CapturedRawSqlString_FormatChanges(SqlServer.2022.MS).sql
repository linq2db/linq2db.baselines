-- SqlServer.2022.MS SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @value
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

-- SqlServer.2022.MS SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID <> @value
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

-- SqlServer.2022.MS SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @value
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

