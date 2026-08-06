-- SqlCe
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%JOHN' ESCAPE '~' AND [p].[PersonID] = 1

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%JOHN' ESCAPE '~' AND [p].[PersonID] = 1

