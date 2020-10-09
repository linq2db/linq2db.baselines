BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	CASE WHEN [p].[PersonID] = 1 THEN 1 ELSE 0 END
FROM
	[Person] [p]

