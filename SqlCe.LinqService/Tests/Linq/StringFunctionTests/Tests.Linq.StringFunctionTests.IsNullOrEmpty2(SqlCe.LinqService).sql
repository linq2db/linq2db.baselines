BeforeExecute
--  SqlCe

SELECT
	CASE
		WHEN Len([p].[FirstName]) = 0 THEN 1
		ELSE 0
	END as [cond]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

