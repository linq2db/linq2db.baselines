-- SqlCe

SELECT
	CASE
		WHEN LEN([p].[FirstName] + '.') = 1 THEN 1
		ELSE 0
	END as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

