-- SqlCe

SELECT
	'*** p ***' + '4' as [alias2],
	'*** p ***' as [alias1],
	'*** [Parent] ***' as [alias3],
	'*** p_1.p ***' as [alias4]
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

