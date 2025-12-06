-- SqlCe

SELECT
	CASE
		WHEN [p].[ParentID] = 1 THEN CASE
			WHEN [c_2].[cond] IS NOT NULL THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END as [a]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID] as [cond]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

