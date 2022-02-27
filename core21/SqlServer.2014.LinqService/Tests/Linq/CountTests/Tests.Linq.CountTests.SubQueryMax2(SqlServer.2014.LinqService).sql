BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Max([t2].[cnt])
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [cnt]
			FROM
				[Child] [t1]
			WHERE
				[p].[ParentID] = [t1].[ParentID]
		) [t2]

