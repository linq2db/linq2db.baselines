BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2

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
			[t2].[RN] > @skip
	) [t2_1]

