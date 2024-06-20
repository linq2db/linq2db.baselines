BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[x].[FirstName],
	RANK() OVER(ORDER BY CASE
		WHEN [x].[PersonID] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Person] [x]

