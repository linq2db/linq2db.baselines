-- SqlCe

SELECT
	CAST([f].[ParentID] AS NVarChar(11)) as [c1],
	CAST([f].[Value1] AS NVarChar(11)) as [c2],
	[f].[ParentID]
FROM
	[Parent] [f]

