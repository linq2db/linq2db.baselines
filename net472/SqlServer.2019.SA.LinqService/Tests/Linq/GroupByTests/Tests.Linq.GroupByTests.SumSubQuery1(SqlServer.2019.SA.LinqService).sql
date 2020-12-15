BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = -1

SELECT
	Sum([t1].[c1] - 3)
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [c1],
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] > @n
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[ChildID]

