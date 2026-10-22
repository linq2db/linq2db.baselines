-- SqlServer.2008
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]([value])
		WHERE
			[p].[PersonID] = [t1].[value]
	)

-- SqlServer.2008
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]([value])
		WHERE
			[p].[PersonID] = [t1].[value]
	)

-- SqlServer.2008
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) [t1]([value])
		WHERE
			[p].[PersonID] = [t1].[value]
	)

