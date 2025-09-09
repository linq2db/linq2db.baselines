BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + ?
FROM
	[Parent] [p]

