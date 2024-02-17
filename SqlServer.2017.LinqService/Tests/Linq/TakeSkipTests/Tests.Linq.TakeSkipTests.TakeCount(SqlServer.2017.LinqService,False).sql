BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	(
		SELECT TOP (5)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

