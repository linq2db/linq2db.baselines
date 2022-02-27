BeforeExecute
-- SqlServer.2005
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [c1]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] + 1 > @n
	) [t1]
GROUP BY
	[t1].[c1]

