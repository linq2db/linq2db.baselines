-- SqlCe

SELECT
	'*** p ***' + '4' as [c1],
	'*** p ***' as [c2],
	'*** [Parent] ***' as [c3],
	'*** p_1.p ***' as [c4]
FROM
	[Child] [c_1]
		INNER JOIN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
		) [p_1] ON [c_1].[ParentID] = [p_1].[ParentID]
WHERE
	'*** p ***' = '*** [Parent] ***'

