BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[ch_1].[c1]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [c1]
		FROM
			[Child] [ch]
	) [ch_1]
WHERE
	[ch_1].[c1] > @n
GROUP BY
	[ch_1].[c1]

