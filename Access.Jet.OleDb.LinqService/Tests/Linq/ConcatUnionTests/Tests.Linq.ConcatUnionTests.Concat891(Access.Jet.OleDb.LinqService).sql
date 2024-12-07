BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ParentID_1]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ParentID] as [ParentID_1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			IIF(False, 0, NULL) as [ParentID],
			[c_2].[ParentID] as [ParentID_1]
		FROM
			[Parent] [c_2]
	) [t1]
UNION ALL
SELECT
	[c_3].[ParentID],
	[c_3].[ParentID]
FROM
	[Child] [c_3]

