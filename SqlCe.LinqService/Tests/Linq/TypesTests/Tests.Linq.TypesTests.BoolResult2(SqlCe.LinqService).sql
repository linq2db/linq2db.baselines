BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [a_Patient].[PersonID] IS NOT NULL THEN 1
		ELSE 0
	END as [c1]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]

