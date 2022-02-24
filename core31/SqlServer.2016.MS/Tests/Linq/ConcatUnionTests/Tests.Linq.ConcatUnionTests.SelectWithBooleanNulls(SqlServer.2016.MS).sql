BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t2].[a],
	[t2].[b]
FROM
	(
		SELECT
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [t1]
			), 1, 0) as [a],
			IIF([x].[ParentID] <> 0, 1, 0) as [b]
		FROM
			[Parent] [x]
	) [t2]
UNION ALL
SELECT
	[t4].[a],
	[t4].[b]
FROM
	(
		SELECT
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [t3]
			), 1, 0) as [a],
			NULL as [b]
		FROM
			[Parent] [x_1]
	) [t4]

