-- SqlServer.2005

SELECT
	CASE
		WHEN [p].[PersonID] = 1 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]

