BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t1].[PersonID]
		FROM
			[Person] [t1]
		UNION
		SELECT
			[t2].[ParentID] as [PersonID]
		FROM
			[Parent] [t2]
	) [t3]

