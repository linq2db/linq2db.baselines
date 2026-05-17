-- SqlCe

SELECT
	CASE
		WHEN [r].[PersonID] IN (1, 2, 3) THEN 1
		ELSE 0
	END as [IsActive]
FROM
	[Person] [r]

