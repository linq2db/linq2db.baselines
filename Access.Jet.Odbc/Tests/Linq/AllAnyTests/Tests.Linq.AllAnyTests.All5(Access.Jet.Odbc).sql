BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	IIF(COUNT(*) = 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= ?

