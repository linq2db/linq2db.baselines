BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN [p].[PersonID] = 1 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]

