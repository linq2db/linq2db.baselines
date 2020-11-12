BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	(
		SELECT TOP (5)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t2]

