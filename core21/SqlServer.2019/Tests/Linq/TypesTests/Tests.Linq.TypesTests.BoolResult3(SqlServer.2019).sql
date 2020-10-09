BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	CASE WHEN [p].[PersonID] = 1 THEN 1 ELSE 0 END
FROM
	[Person] [p]

