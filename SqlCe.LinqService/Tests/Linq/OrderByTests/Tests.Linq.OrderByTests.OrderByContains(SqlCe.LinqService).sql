BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	CASE
		WHEN [t1].[PersonID] IN (1, 3) THEN 1
		ELSE 0
	END

