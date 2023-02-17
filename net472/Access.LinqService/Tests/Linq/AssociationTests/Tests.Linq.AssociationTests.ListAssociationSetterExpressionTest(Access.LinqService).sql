BeforeExecute
-- Access AccessOleDb

SELECT
	[lw_ListAssociationSetterExpressionTestClass].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID]
		FROM
			(
				SELECT TOP 1
					[t1].[ParentID]
				FROM
					[Parent] [t1]
			) [t2]
	) [lw_ListAssociationSetterExpressionTestClass]
		INNER JOIN [Child] [detail] ON ([lw_ListAssociationSetterExpressionTestClass].[ParentID] = [detail].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[t1].[ParentID]
FROM
	[Parent] [t1]

