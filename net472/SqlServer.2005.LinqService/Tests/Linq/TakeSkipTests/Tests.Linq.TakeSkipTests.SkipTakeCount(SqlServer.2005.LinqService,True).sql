BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 7

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
			[t2].[RN] > @skip AND [t2].[RN] <= @skip_1
	) [t2_1]

