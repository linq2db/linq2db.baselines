BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [p].[PersonID] = 1 THEN 1
		ELSE 0
	END as [c1]
FROM
	[Person] [p]

