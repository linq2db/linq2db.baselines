BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN Len([p].[FirstName]) = 0 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

