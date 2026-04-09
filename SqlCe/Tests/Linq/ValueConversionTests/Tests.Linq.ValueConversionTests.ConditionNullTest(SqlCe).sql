-- SqlCe

SELECT
	CASE
		WHEN [i].[item] = 0 THEN NULL
		ELSE [p].[ParentID]
	END as [ID],
	[p].[Value1]
FROM
	[Parent] [p],
	(
		SELECT 0 AS [item]
		UNION ALL
		SELECT 1 AS [item]) [i]
WHERE
	CASE
		WHEN [i].[item] = 0 THEN NULL
		ELSE [p].[ParentID]
	END = [p].[Value1] OR
	[i].[item] = 0 AND [p].[Value1] IS NULL

