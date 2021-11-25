BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%Jo%' ESCAPE '~'
ORDER BY
	CASE
		WHEN [p].[FirstName] LIKE '%Jo%' ESCAPE '~'
			THEN 1
		ELSE 0
	END

