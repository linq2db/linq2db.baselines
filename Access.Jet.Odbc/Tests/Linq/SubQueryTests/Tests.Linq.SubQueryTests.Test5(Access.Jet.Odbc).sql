-- Access.Jet.Odbc AccessODBC
DECLARE @_testValue Int -- Int32
SET     @_testValue = 3

SELECT
	[id_1].[c1],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p]
		WHERE
			[p].[ParentID] = [id_1].[c1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p_1]
		WHERE
			[p_1].[ParentID] = [id_1].[c1] AND [p_1].[ParentID] = ?
	)
FROM
	(
		SELECT DISTINCT
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c1]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [id_1]

