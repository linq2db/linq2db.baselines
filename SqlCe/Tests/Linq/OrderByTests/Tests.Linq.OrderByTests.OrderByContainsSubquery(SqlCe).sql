BeforeExecute
-- SqlCe

SELECT
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	CASE
		WHEN [t1].[PersonID] IN (1, 3) THEN 1
		ELSE 0
	END as [flag]
FROM
	[Person] [t1]
ORDER BY
	CASE
		WHEN [t1].[PersonID] IN (1, 3) THEN 1
		ELSE 0
	END

