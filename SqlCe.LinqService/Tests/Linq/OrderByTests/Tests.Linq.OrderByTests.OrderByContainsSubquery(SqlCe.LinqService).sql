BeforeExecute
-- SqlCe

SELECT
	[_].[PersonID] as [ID],
	[_].[LastName],
	CASE
		WHEN [_].[PersonID] IN (1, 3) THEN 1
		ELSE 0
	END as [flag]
FROM
	[Person] [_]
ORDER BY
	CASE
		WHEN [_].[PersonID] IN (1, 3) THEN 1
		ELSE 0
	END

