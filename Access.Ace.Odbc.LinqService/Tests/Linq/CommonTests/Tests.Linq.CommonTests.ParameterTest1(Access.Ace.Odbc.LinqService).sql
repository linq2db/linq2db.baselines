BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = ? AND [t].[ParentID] = [g_1].[ParentID]
	)
GROUP BY
	[g_1].[ParentID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = ? AND [t].[ParentID] = [g_1].[ParentID]
	)
GROUP BY
	[g_1].[ParentID]

