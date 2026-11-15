-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT
	CASE
		WHEN [p].[Value1] IS NULL THEN [p].[ParentID] MOD 2
		ELSE [p].[Value1]
	END,
	[p].[Value1]
FROM
	[Parent] [p]

