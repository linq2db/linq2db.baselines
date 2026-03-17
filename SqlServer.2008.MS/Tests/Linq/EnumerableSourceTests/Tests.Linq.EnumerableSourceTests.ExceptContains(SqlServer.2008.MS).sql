-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN [r].[PersonID] IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	[Person] [r]

