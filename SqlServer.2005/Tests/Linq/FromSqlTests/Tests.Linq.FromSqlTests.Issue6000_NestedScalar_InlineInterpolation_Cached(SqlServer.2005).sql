-- SqlServer.2005
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
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT [PersonID] AS [value] FROM [Person] WHERE [PersonID] = @value
			) [t1]([value])
	)

-- SqlServer.2005
DECLARE @value Int -- Int32
SET     @value = 2

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
				SELECT [PersonID] AS [value] FROM [Person] WHERE [PersonID] = @value
			) [t1]([value])
	)

-- SqlServer.2005
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
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT [PersonID] AS [value] FROM [Person] WHERE [PersonID] = @value
			) [t1]([value])
	)

