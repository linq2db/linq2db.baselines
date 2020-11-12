BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	(
		SELECT
			[t2].[ChildID]
		FROM
			(
				SELECT
					[t1].[ChildID],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Child] [t1]
			) [t2]
		WHERE
			[t2].[RN] > 2
	) [t2_1]

